import torch
import torchvision
from torch.utils.data import DataLoader
from customdata import my_customdata
import albumentations as A
from albumentations.pytorch.transforms import ToTensorV2
import torch.nn as nn
from timm.loss import LabelSmoothingCrossEntropy
import time
import copy
import os
import glob
from torchvision import models


device = torch.device("cuda" if torch.cuda.is_available() else "cpu")


train_transforms = A.Compose([
    A.SmallestMaxSize(max_size=224),
    A.ShiftScaleRotate(shift_limit=0.08, scale_limit=0.08, rotate_limit=20, p=0.8),
    A.RandomShadow(p=0.6),
    A.HorizontalFlip(p=0.5),
    A.VerticalFlip(p=0.5),
    A.Normalize(mean=(0.485, 0.456, 0.406), std=(0.229, 0.224, 0.225)),
    ToTensorV2()
])
val_transforms = A.Compose([
    A.SmallestMaxSize(max_size=224),
    A.Normalize(mean=(0.485, 0.456, 0.406), std=(0.229, 0.224, 0.225)),
    ToTensorV2()  
])

# Dataset
train_dataset = my_customdata("./dataset/train/", transform=train_transforms)
val_dataset = my_customdata("./dataset/valid/", transform=val_transforms)
test_dataset= my_customdata("./dataset/test/", transform=val_transforms)


# DataLoader
train_loader = DataLoader(train_dataset, batch_size=400, shuffle=True, num_workers=2, pin_memory=True) # num_workers는 할당할 cpu의 코어 수
val_loader = DataLoader(val_dataset, batch_size=400, shuffle=False, num_workers=2, pin_memory=True) # cpu, gpu가 통신하기 위한 메모리 공간? 전송? 여하간 유용한 것
test_loader = DataLoader(test_dataset, batch_size=1, shuffle=False, num_workers=2, pin_memory=True)


model = torch.hub.load('facebookresearch/deit:main', 'deit_tiny_patch16_224', pretrained=True)
# # print(model) #   (head): Linear(in_features=192, out_features=1000, bias=True) <-- 바꿔야 할 부분
model.head = nn.Linear(in_features=192, out_features=100)
# # print(model) # out_features=100 바뀐 거 확인
model.to(device)
optimizer = torch.optim.AdamW(model.head.parameters(), lr=0.001)


# model = torchvision.models.resnet50(pretrained=True)
# model.fc = torch.nn.Linear(in_features=2048, out_features=100)
# model.to(device)
# optimizer = torch.optim.Adam(model.parameters(), lr=0.001)


# model= models.vgg11(pretrained=True)
# print(net) # 우선 pre-trained 모델을 확인해본다. 거기서 마지막 단에서 바꿔야하는 곳을 확인한다((6): Linear(in_features=4096, out_features=1000, bias=True))
# model.classifier[6] = nn.Linear(in_features=4096, out_features=100) # in_features는 있는 그대로, out_features는 우리가 필요한 label 갯수
# print(net) # 바뀐 거 확인! ((6): Linear(in_features=4096, out_features=450, bias=True))
# optimizer = torch.optim.Adam(model.parameters(), lr=0.001)
# model.to(device)


# model = model.swin_t(weights='IMAGENET1K_V1')
# model.head = nn.Linear(in_features=768, out_features=100)


criterion = LabelSmoothingCrossEntropy()


# learning rate scheduler setting
exp_lr_scheduler = torch.optim.lr_scheduler.StepLR(optimizer, step_size=30, gamma=0.95) # gamma = 얼마만큼 떨굴래?


def train(model, criterion, train_loader, val_loader, optimizer, scheduler, num_epochs=100, device=device) :
    since = time.time()
    best_model_wts = copy.deepcopy(model.state_dict())
    # best_acc = 0.0
    total = 0
    best_loss = 9999


    for epoch in range(num_epochs) :
        print(f"Epoch {epoch} / {num_epochs - 1}")
        print("-" * 50) # --------------------------------------------------------------------------------------------------------------------

        for index, (image, label) in enumerate(train_loader) :
            image, label = image.to(device), label.to(device)
            output = model(image)
            loss = criterion(output, label)
            scheduler.step()
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

            _, argmax = torch.max(output, dim=1)
            acc = (label == argmax).float().mean()
            total += label.size(0)

            if (index + 1) % 10 == 0 :
                print("Epoch [{}/{}], Step [{}/{}], Loss {:.4f}, Accuracy {:.2f}".format(
                    epoch + 1, num_epochs, index + 1, len(train_loader), loss.item(), acc.item() * 100))
            
        avrg_loss, val_acc = validation(epoch, model, val_loader, criterion, device)
        if avrg_loss < best_loss :
            best_loss = avrg_loss
            best_model_wts = copy.deepcopy(model.state_dict())
            save_model(model, save_dir="./")
        
    time_elapsed = time.time() - since
    print("학습이 완료되었습니다. 소요 시간 : {:.0f}분, {:.06f}초".format(time_elapsed // 60, time_elapsed % 6))
    model.load_state_dict(best_model_wts)


def validation(epoch, model, val_loader, criterion, device) :
    print("검증을 시작합니다....# {}".format(epoch + 1))
    model.eval()
    with torch.no_grad() :
        total = 0
        total_loss = 0
        correct = 0
        cnt = 0
        batch_loss = 0

        for i, (image, label) in enumerate(val_loader) :
            image, label = image.to(device), label.to(device)
            output = model(image)
            loss = criterion(output, label)
            batch_loss += loss.item()
            total += image.size(0)
            _, argmax = torch.max(output, dim=1)
            correct += (label == argmax).sum().item()
            total_loss += loss
            cnt += 1
    
    avrg_loss = total_loss / cnt
    val_acc = (correct / total) * 100
    print("Validation # {}, ACC : {:.2f}, Average Loss : {:.4f}".format(
        epoch + 1, correct / total * 100, avrg_loss))

    return avrg_loss, val_acc


def save_model(model, save_dir, file_name="best.pt") :
    output_path = os.path.join(save_dir, file_name)
    torch.save(model.state_dict(), output_path)


def test(model, test_loader, device) :
    model.eval()
    correct = 0
    total = 0

    with torch.no_grad() :
        for i, (image, label) in enumerate(test_loader) :
            image, label = image.to(device), label.to(device)
            output = model(image)
            _, argmax = torch.max(output, 1)
            total += image.size(0)
            correct += (label == argmax).sum().item()
        
        acc = correct / total * 100
        print("Acc for {} image : {:.2f}%".format(total, acc))


if __name__ == '__main__' :
    # train(model, criterion, train_loader, val_loader, optimizer, scheduler=exp_lr_scheduler, device=device)
    model.load_state_dict(torch.load("./best.pt", map_location=device))
    test(model, test_loader, device)