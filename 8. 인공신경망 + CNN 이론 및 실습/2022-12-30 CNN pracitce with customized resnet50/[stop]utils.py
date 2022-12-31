import torch
import torch.optim
from torch.utils.data import DataLoader
import torchvision.models as models
import albumentations as A
from albumentations.pytorch import ToTensorV2
from customdataset import customdataset
import copy
import matplotlib.pyplot as plt
import main
import os

# Visualize Augmentation(Standard : Alumentation)
def visualize_augmentation(dataset, idx=0, samples=10, cols=5):
    dataset = copy.deepcopy(dataset)
    dataset.transform = A.Compose([
        t for t in dataset.transform if not isinstance(t, (A.Normalize, ToTensorV2))])
    rows = samples // cols
    figure, ax = plt.subplots(nrows=rows, ncols=cols, figsize=(12, 6))
    
    for i in range(samples):
        image, _ = dataset[idx] # '_'는 뭐 받을 필요 없기 때문에 비워둠. 원래 같으면 target이 출력될 위치
        ax.ravel()[i].imshow(image)
        ax.ravel()[i].set_axis_off()
    plt.tight_layout()
    plt.show()


def train(num_epoch, model, train_loader, val_lodader, criterion, optimizer, scheduler, save_dir, device) :
    print("학습이 시작됩니다......")
    running_loss = 0.0
    total = 0
    best_loss = 9999
    for epoch in range(num_epoch+1) :
        for i, (imgs, labels) in enumerate(train_loader) :
            img, label = imgs.to(device), labels.to(device)

            output = model(img) # 모델이 예측한 결과치
            loss = criterion(output, label) # 예측한 결과치와 정답지(label)를 비교해서 오차를 찾음
            scheduler.step() # learning rate 떨굴 시점
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

            running_loss += loss.item()

            _, argmax = torch.max(output, 1) # argmax에서 예측한 라벨이 나옴
            acc = (label==argmax).float().mean()
            total += label.size(0)

            if (i+1) % 10 == 0 :
                print("Epoch [{}/{}], Step[{}/{}], Loss : {:.4f}, Acc : {:.2f}%"
                .format(epoch+1, num_epoch, i+1, len(train_loader), loss.item(), acc.item()*100))
            
        avrg_loss, val_acc = validation(epoch, model, val_lodader, criterion, device)

        if epoch % 10 == 0 :
            save_model(model, save_dir, file_name=f"{epoch}.pt")

        if avrg_loss < best_loss :
            print(f"Best save point at epoch >>> {epoch}")
            print(f"{save_dir}에 모델이 저장되었습니다......")
            best_loss = avrg_loss
            save_model(model, save_dir)

    save_model(model, save_dir, file_name="last_resnet.pt")


def validation(model, val_loader, criterion, device) :
    print("시험이 시작됩니다......")

    with torch.no_grad() :
        model.eval() # 모델이 평가 모드로 전환

        total = 0
        correct = 0
        total_loss = 0
        cnt = 0
        batch_loss = 0

        for i, (imgs, labels) in enumerate(val_loader) :
            imgs, labels = imgs.to(device), labels.to(device)
            output = model(imgs)
            loss = criterion(output, labels)
            batch_loss += loss.item()

            total += imgs.size(0)
            _, argmax = torch.max(output, 1)
            correct += (labels==argmax).sum().item()
            total_loss += loss
            cnt += 1

    avrg_loss = total_loss / cnt
    val_acc = correct / total * 100
    print("Val Acc : {:.2f}%, Avg loss : {:.4f}".format(val_acc, avrg_loss))
    model.train()

    return avrg_loss, val_acc


def save_model(model, save_dir, file_name="best_resnet.pt") :
    output_path = os.path.join(save_dir, file_name)
    torch.save(model.state_dict(), output_path)