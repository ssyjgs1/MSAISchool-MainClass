from utils import *
from customdataset import *
from torch.utils.data import DataLoader
import torch
from torchvision import models
import torchvision
import torch.nn as nn
import torch.optim as optim
import pandas as pd
from tqdm import tqdm # 그냥 import tqdm으로는 동작하지 않음
import sys

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

# augmentation
train_aug = aug_function(mode_flog="train")
val_aug = aug_function(mode_flog="val")

# 데이터셋
train_dataset = customdataset("./dataset/train/", transform=train_aug)
val_dataset = customdataset("./dataset/val/", transform=val_aug)

# 데이터로더
train_loader = DataLoader(train_dataset, batch_size=10, shuffle=True)
val_loader = DataLoader(val_dataset, batch_size=1, shuffle=False)

# 모델 선언 및 데이터셋에 맞게 feature수 변경
finetune_net = torchvision.models.efficientnet_b3(pretrained=True)
finetune_net.classifier[1] = nn.Linear(1536, 7)
finetune_net.to(device)
# print(finetune_net)

# loss + optimizer
loss_function = nn.CrossEntropyLoss()
optimizer = torch.optim.AdamW(finetune_net.parameters(), lr=0.0003, weight_decay=0.0005)

# hyperparameter
epochs = 100
best_val_acc = 0.0
save_path = "best.pt"
train_steps = len(train_loader)
val_steps = len(val_loader)


dfForAccuracy = pd.DataFrame(index=list(range(epochs)), columns=['Epoch', 'Accuracy'])
if os.path.exists(save_path) :
    best_val_acc = max(pd.read_csv('./modelAccuracy.csv')['Accuracy'].tolist())
    finetune_net.load_state_dict(torch.load(save_path))


for epoch in range(epochs+1) :
    running_loss = 0
    val_acc = 0
    train_acc = 0

    finetune_net.train()
    train_bar = tqdm(train_loader, file=sys.stdout, colour='red')
    for step, data in enumerate(train_bar) :
        # print(data)
        images, labels = data
        images, labels = images.to(device), labels.to(device)
        outputs = finetune_net(images)
        loss = loss_function(outputs, labels)

        optimizer.zero_grad()
        train_acc += (torch.argmax(outputs, dim=1) == labels).sum().item()
        loss.backward()
        optimizer.step()

        running_loss += loss.item()
        train_bar.desc = f"Train Epoch [{epoch+1} / {epochs}, Loss {loss.data:.3f}]"

    finetune_net.eval()
    with torch.no_grad() :
        print("검증을 시작합니다......")
        valid_bar = tqdm(val_loader, file=sys.stdout, colour='red')
        for data in valid_bar :
            iamges, labels = data
            images, labels = images.to(device), labels.to(device)
            outputs = finetune_net(images)
            val_acc += (torch.argmax(outputs, dim=1) == labels).sum().item()
        
        val_accuracy = val_acc / len(val_dataset)
        train_accuracy = train_acc / len(train_dataset)

        dfForAccuracy.loc[epoch, 'Epoch'] = epoch + 1
        dfForAccuracy.loc[epoch, 'Accuracy'] = round(val_accuracy, 3)
        print(f"Epoch [{epoch+1}/{epochs}] | Train Loss : {(running_loss / train_steps):.3f} | Train Accuracy : {train_accuracy:.3f} | Val Accuracy : {val_accuracy:.3f}")

        if val_accuracy > best_val_acc :
            best_val_acc = val_accuracy
            torch.save(finetune_net.state_dict(), save_path)

        if epoch == epochs - 1 :
            dfForAccuracy.to_csv("./modelAccuracy.csv", index=False)

"""디버깅 용도"""
# for i in val_dataset :
#     print(i)

# for i, (image, label) in enumerate(train_loader) :
#     print(image, label)
# for i, (image, label) in enumerate(val_loader) :
#     print(image, label)