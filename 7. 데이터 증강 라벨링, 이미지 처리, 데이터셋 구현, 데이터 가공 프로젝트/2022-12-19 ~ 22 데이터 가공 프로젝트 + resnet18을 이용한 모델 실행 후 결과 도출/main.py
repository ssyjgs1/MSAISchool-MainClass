from dataset_temp import custom_dataset
import albumentations as A
from albumentations.pytorch import ToTensorV2
from torch.utils.data import DataLoader
import torch
import  hy_parameter
# from hy_parameter import *
from torchvision import models
import torch.nn as nn
from utils import train, validate, save_model
import os

# device 정의
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

"""A.Compose 마지막에는 항상 ToTensorV2()를 붙여줘야함"""
# train에 augmentation 멕이기
train_transform = A.Compose([
    A.Resize(height=224, width=224),
    A.HorizontalFlip(p=1),
    A.RandomRotate90(p=1),
    A.VerticalFlip(p=1),
    # A.GaussNoise(p=1),
    ToTensorV2()
])

# val에 augmentation 멕이기
val_transform = A.Compose([
    A.Resize(height=224, width=224),
    ToTensorV2()
])


# dataset
train_dataset = custom_dataset("./dataset/train", transform=train_transform)
val_dataset = custom_dataset("./dataset/val", transform=val_transform)

# data loader(dataset 수량만큼 data loader 작성)
train_loader = DataLoader(train_dataset, batch_size=hy_parameter.batch_size, shuffle=True)
val_loader = DataLoader(val_dataset, batch_size=hy_parameter.batch_size, shuffle=False)


# model call(호출)
net = models.__dict__["resnet18"](pretrained=True) # pretrained=True면 오류남 | , num_classes = hy_parameter.num_classes
# print("이 모델의 아키텍처는 어떻게 구성되어 있는가? >>>", net)


# pretrained=True일 때, num_classes=4 수정 방법
net.fc = nn.Linear(512, 4)
# print("강제로 변경한 모델 아키텍처는 >>>", net)
net.to(device)

# criterion
criterion = nn.CrossEntropyLoss().to(device)

# optimizer
optim = torch.optim.Adam(net.parameters(), lr=hy_parameter.lr)

# model save dir
model_save_dir = "./model_save/"
os.makedirs(model_save_dir, exist_ok=True)

# def train(number_epoch, train_loader, val_loader, criterion, optimizer, model, save_dir, device) :
train(number_epoch=hy_parameter.epoch, train_loader=train_loader, val_loader=val_loader, criterion=criterion, optimizer=optim, model=net, save_dir=model_save_dir, device=device)



# Debugging
# for i, (x, y) in enumerate(train_loader) :
#     print(i, x, y)