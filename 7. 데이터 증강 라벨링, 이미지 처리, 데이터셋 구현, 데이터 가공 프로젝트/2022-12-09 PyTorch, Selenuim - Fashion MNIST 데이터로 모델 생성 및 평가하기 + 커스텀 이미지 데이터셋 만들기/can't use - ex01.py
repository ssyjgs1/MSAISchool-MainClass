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

training_data = datasets.FashionMNIST(
    root='data',
    train=True,
    download=True,
    transform=ToTensor()
)

test_data = datasets.FashionMNIST(
    root='data',
    train=False,
    download=True,
    transform=ToTensor()
)

# 이미지 28 x 28 크기의 것을 5장 가져오겠다
img_size = 28
num_images = 5
with open('data/FashionMNIST/raw/t10k-images-idx3-ubyte', 'rb') as f: # rb : read
    _ = f.read(16) # 16은 header라 날릴 거. 17번부터 사용할 것임
    buf = f.read(img_size * img_size * num_images)
    data = np.frombuffer(buf, dtype=np.uint8).astype(float) # buf을 np 형태로 바꿔줌
    data = data.reshape(num_images, img_size, img_size, 1) # 1열로 된 행렬로 바꿔줌
    image = np.asarray(data[2]).squeeze() # squeeze는 정보 중 대괄호 없애줘서 이미지 읽을 수 있게 함
    plt.imshow(image, 'gray')

with open('data/FashionMNIST/raw/train-labels-idx1-ubyte','rb') as f:
    _ = f.read(8)
    buf = f.read(num_images)
    labels = np.frombuffer(buf, dtype=np.uint8).astype(np.int64)
    print(labels[2])

plt.title(f'{labels[2]}')
plt.show()

labels_map = {
    0 : 'T-Shirt',
    1 : 'Trouser',
    2 : 'Pullover',
    3 : 'Dress',
    4 : 'Coat',
    5 : 'Sandal',
    6 : 'Shirt',
    7 : 'Sneaker',
    8 : 'Bag',
    9 : 'Ankle Boot'
}

figure = plt.figure(figsize=(8,8))
cols, rows = 3, 3
for i in range(1, cols * rows + 1) :
    sample_idx = torch.randint(len(training_data), size=(1,)).item()
    img, label = training_data[sample_idx]
    figure.add_subplot(rows, cols, i)
    plt.title(labels_map[label])
    plt.axis('off')
    plt.imshow(img.squeeze(),cmap='gray')
plt.show()
### save annotation csv 
# header
imgf = open('data/FashionMNIST/raw/train-images-idx3-ubyte','rb')
imgd = imgf.read(16)
lblf = open('data/FashionMNIST/raw/train-labels-idx1-ubyte','rb')
lbuf = lblf.read(8)
df_dict = {
    'file_name' : [],
    'label' : []
}
idx=0
while True :
    imgd = imgf.read(img_size * img_size) # 이미지를 한 장 한 장 읽을 것
    if not imgd :
        break
    data = np.frombuffer(imgd, dtype=np.uint8).astype(float)
    data = data.reshape(1, img_size, img_size, 1)
    image = np.asarray(data).squeeze() # 이미지 생성
    lbld = lblf.read(1)
    labels = np.frombuffer(lbld, dtype=np.uint8).astype(np.int64)
    file_name = f'{idx}.png'
    cv2.imwrite(f'./morningimgs/{file_name}',image)
    idx += 1
    df_dict['label'].append(labels[0])
    df_dict['file_name'].append(file_name)

# print(df_dict)
df = pd.DataFrame(df_dict)
print(df)
df.to_csv('./annotations.csv')

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
batch_size = 64
test_batch_size = 1000        
dataset = CustomImageDataset(
    annotations_file='./annotations.csv',
    img_dir = 'C:\\Users\\user\\Downloads\\2022-12-09\\data')

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

epochs = 10
lr = 0.01
momentum = 0.5
no_cuda = True
seed = 1
log_interval = 200
use_cuda = not no_cuda and torch.cuda.is_available()
torch.manual_seed(seed)
device = torch.device("cuda" if use_cuda else "cpu")
kwargs = {'num_workers' : 1, 'pin_memory' : True} if use_cuda else {}
print('ser vars and device done')

