import os
import torch
import torch.nn as nn
from collections import defaultdict # 초기화를 위해서 dummy를 만들어 주는 기능
from metric_monitor_temp import MetricMonitor
from tqdm import tqdm
os.environ['KMP_DUPLICATE_LIB_OK']='True'


# save model
def save_model(model, save_dir, file_name='last.pt') :
    os.makedirs(save_dir, exist_ok=True)
    output_path = os.path.join(save_dir, file_name)
    if isinstance(model, nn.DataParallel):
        print("multi GPU saved")
        torch.save(model.module.state_dict(), output_path)
    else:
        print("single GPU saved")
        torch.save(model.state_dict(), output_path)
        

# # 평가 함수 - 하단에 validate라고 재작성
# def calculate_acc(output, target) : # output : 모델에서 예측한 값, target : 정답
#     output = torch.sigmoid(output) >= 0.5
#     target = target == 1.0
#     return torch.true_divide((output == target).sum(dim=0), output.size(0)).item()


# train loop
def train(number_epoch, train_loader, val_loader, criterion, optimizer, model, save_dir, device) :
    print("start training...")
    running_loss = 0.0
    total = 0
    best_loss = 77777 # 중간에 평가하다가 잘 나온 모델 나오면 저장해뒀다가 다른 거 잘 나오면 바꾸고 교체해줌. 일단 아무 값이나 넣어주면 됨 + 소수점만 아니면 됨.

    for epoch in range(number_epoch) :
        for i, (images, labels) in tqdm(enumerate(train_loader)) :
            images = images.to(device)
            labels = labels.to(device)

            optimizer.zero_grad()
            outputs = model(images)
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()
            running_loss += loss.item()

            _, argmax = torch.max(outputs, 1)
            acc = (labels == argmax).float().mean()
            total += labels.size(0)

            if (i + 1) % 10 == 0 :
                print("Epoch [{}/{}], Step [{}/{}], Loss : {:.4f}, Acc : {:.4f}".format(
                    epoch + 1, # 전체 epoch
                    number_epoch, # 실행될 때의 epoch
                    i + 1,
                    len(train_loader),
                    loss.item(),
                    acc.item() * 100, # % 단위로 나와야 하기 때문에 x 100해줌
                ))
    
        avg_loss, val_acc = validate(epoch, model, val_loader, criterion, device)

        # 특정 epoch마다 저장하고 싶다하는 경우
        if epoch % 10 == 0 :
            save_model(model, save_dir, file_name=f"{epoch}.pt")
        
        # best save
        if val_acc > best_loss :
            print(f"best model saved. best save >>> {epoch}")
            best_loss = val_acc
            save_model(model, save_dir, file_name="best.pt")

    # last save
    save_model(model, save_dir, file_name="final.pt")


# 평가 함수
def validate(epoch, model, val_loader, criterion, device) :
    print("Start Validation......")
    with torch.no_grad() : # 미분하지 마라 --> 학습하지 마라 동일 의미
        model.eval()
        total = 0
        correct = 0
        total_loss = 0
        cnt = 0
        batch_loss = 0

        for i, (images, labels) in tqdm(enumerate(val_loader)) : 
            images = images.to(device)
            labels = labels.to(device)
            outputs = model(images)
            loss = criterion(outputs, labels)
            batch_loss += loss.item()

            total += labels.size(0)
            _, argmax = torch.max(outputs, 1)
            correct += (argmax == labels).sum().item()
            total_loss += loss.item()
            cnt += 1

    avg_loss = total / cnt
    val_acc = (correct / total * 100)

    print("val # {} acc {:.2f} avg loss {:.4f}".format(
        epoch + 1,
        correct / total * 100,
        avg_loss
    ))

    model.train()

    return avg_loss, val_acc