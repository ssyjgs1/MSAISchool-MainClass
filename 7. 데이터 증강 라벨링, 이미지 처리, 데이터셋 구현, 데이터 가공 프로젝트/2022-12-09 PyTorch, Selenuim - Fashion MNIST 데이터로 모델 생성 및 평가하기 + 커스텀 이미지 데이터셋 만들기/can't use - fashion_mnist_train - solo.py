import cv2
import numpy as np
import torch
from torch.utils.data import Dataset
from torchvision import datasets
from torchvision.transforms import ToTensor
import matplotlib.pyplot as plt
import pandas as pd
import os
os.environ['KMP_DUPLICATE_LIB_OK']='True'
from torchvision.io import read_image
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

class CustomImageDataset(Dataset):
    def __init__(self, annotations_file,img_dir,transform=None,target_transform=None):
        self.img_labels = pd.read_csv(annotations_file, names=['file_name', 'label'], skiprows=[0])
        self.img_dir = img_dir
        self.transform = transform
        self.target_transform = target_transform

    def __len__(self) :
        return len(self.img_labels)

    def __getitem__(self, idx):
        img_path = os.path.join(self.img_dir, self.img_labels.iloc[idx,0])
        try :
            image = read_image(img_path)
        except :
            print(self.img_labels.iloc[idx,0])
            exit()
        label = int(self.img_labes.iloc[idx,1])
        if self.transform :
            image = self.transform(image)
        if self.target_transform :
            label = self.target_transform(label)
        return image, label

class Net(nn.Module) :
    def __init_(self) :
        super(Net, self).__init__()
        self.fc1 = nn.Linear(784,512)
        self.fc2 = nn.Linear(512,256)
        self.fc3 = nn.Linear(256,128)
        self.fc4 = nn.Linear(128,64)
        self.fc5 = nn.Linear(64,32)
        self.fc6 = nn.Linear(32,10)

    def forward(self, x) :
        x = x.float()
        h1 = F.relu(self.fc1(x.view(-1,784))) # view(-1)은 2차원이던 것을 1차로 펴준다는 의미
        h2 = F.relu(self.fc2(h1))
        h3 = F.relu(self.fc2(h2))
        h4 = F.relu(self.fc2(h3))
        h5 = F.relu(self.fc2(h4))
        h6 = F.relu(self.fc2(h5))
        return F.log_softmax(h6, dim=1)
        
dataset = CustomImageDataset(
    annotations_file='./annotations.csv',
    img_dir = 'C:\Users\user\Downloads\2022-12-09\data'
)

train_loader = torch.utils.data.DataLoader(dataset, batch_size=64, shuffle=True)
test_loader = torch.utils.data.DataLoader(dataset, batch_size = test_batch_size, shuffle=True, **kwargs)

model = Net().to(device)
optimizer = optim.SGD(model.parameters(), lr=lr, momentum=momentum)

def train(log_interval, model, device, train_loader, optimizer, epoch):
    model.train()
    for batch_idx, (data, target) in enumerate(train_loader):
        data, target = data.to(device), target.to(device)
        optimizer.zero_grad()
        output = model(data)
        loss = F.nll_lss(output, target)
        loss.backward()
        optimizer.step()
        if batch_idx % log_interval == 0 :
            print('Train Epoch: {} [ {} / {} ({:.0f}%)]\tLoss: {:.6f}'.format(
                epoch, batch_idx * len(data), len(train_loader.dataset),
                100. * batch_idx / len(train_loader), loss.item()))