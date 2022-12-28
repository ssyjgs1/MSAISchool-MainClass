# 간단한 CNN을 만들어보자!
import torch
import torch.nn as nn
import torch.nn.functional as F

class CNN(nn.Module) :
    def __init__(self) :
        super(CNN, self).__init__()
        # 이미지 특징(feature 등) 찾는 구간
        self.conv1 = nn.Conv2d(in_channels=1, out_channels=3, kernel_size=5, stride=1) # in_channels=1은 grayscale의 이미지 채널 수를 뜻함
        self.conv2 = nn.Conv2d(in_channels=3, out_channels=10, kernel_size=5, stride=1)
        # 나온 이미지의 자체 정보와 라벨 정보를 가지고 있는 구간
        self.fc1 = nn.Linear(10*12*12, 50) # (이미지 정보, 라벨 정보)
        self.fc2 = nn.Linear(50, 10) # 라벨 갯수를 수정해야 pre-trained model을 가져와서 사용할 수 있음. 당연히 호출 방법은 각 모델마다 다 다름
        
    def forward(self, x) :
        print("연산 전 x.size >>>", x.size())
        # 연산 전 x.size >>> torch.Size([10, 1, 20, 20])

        x = F.relu(self.conv1(x))
        print("conv1 연산 후 x.size >>>", x.size())
        # conv1 연산 후 x.size >>> torch.Size([10, 3, 16, 16])

        x = F.relu(self.conv2(x))
        print("conv2 연산 후 x.size >>>", x.size())
        # conv2 연산 후 x.size >>> torch.Size([10, 10, 12, 12])

        """차원 감소 후 --> x 값이 어떻게 변할까?"""
        x = x.view(-1, 10 * 12 * 12) # pytorch 기능 중 view(), reshape()은 숙지해둘 필요가 있다! --> tensor의 모양을 변경하는 기능
        print("차원 감소 후 >>>", x.size())
        # 차원 감소 후 >>> torch.Size([10, 1440])
        x = F.relu(self.fc1(x))
        print("fc1 연산 후 x.size >>>", x.size())
        # fc1 연산 후 x.size >>> torch.Size([10, 50])
        x = F.relu(self.fc2(x))
        print("fc2 연산 후 x.size >>>", x.size())
        # fc2 연산 후 x.size >>> torch.Size([10, 10]) 

cnn = CNN()
output = cnn(torch.randn(10, 1, 20, 20)) # matrix size 20x20