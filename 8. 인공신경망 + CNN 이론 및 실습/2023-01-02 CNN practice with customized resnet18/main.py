from customdataset import *
import torch
from torch.utils.data import DataLoader
from torchvision import transforms
import torch.nn as nn
from torchvision import models
import torch.optim as optim
from utils import *

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

# augmentation를 만들어 주자
train_transform = transforms.Compose([
    transforms.Resize((224,224)),
    transforms.RandomHorizontalFlip(p=0.6),
    transforms.RandomRotation(20),
    transforms.ToTensor(),
    transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5))
])
val_transform = transforms.Compose([
    transforms.Resize((224,224)),
    transforms.ToTensor(),
    transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5))
])
test_transform = transforms.Compose([
    transforms.Resize((224,224)),
    transforms.ToTensor(),
    transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5))
])


# train, val, test 각각의 데이터셋
train_dataset = customDataset("./dataset/train",transform=train_transform)
val_dataset = customDataset("./dataset/val", transform=val_transform)
test_dataset = customDataset("./dataset/test", transform=test_transform)


# train, val, test 각각의 데이터로더
train_loader = DataLoader(train_dataset, batch_size=126, shuffle=True, num_workers=4)
val_loader = DataLoader(val_dataset, batch_size=126, shuffle=False)
test_loader = DataLoader(test_dataset, batch_size=1, shuffle=False)


# 모델 선언 및 데이터셋에 맞게 feature수 변경
net = models.resnet18(pretrained=False)
in_feature_val = net.fc.in_features
net.fc = nn.Linear(in_feature_val, 4)
# print(net)
net.to(device)

# test model loader
net.load_state_dict(torch.load("./best.pt", map_location=device)) # 각 사용자 기기 환경에 맞게 잡아주는 map_location 인자

# loss + optimizer
criterion = nn.CrossEntropyLoss()
criterion = criterion.to(device)
optimizer = optim.SGD(net.parameters(), lr=0.001)

# train(n_epochs, train_loader, val_loader, model, optimizer, criterion, device, save_path, last_validation_loss=None)
# train(100, train_loader, val_loader, net, optimizer, criterion, device, save_path="./best.pt")


if __name__== '__main__' :
    # train(100, train_loader, val_loader, net, optimizer, criterion, device, save_path="./best.pt")
    test(net, test_loader, device)
    # pretrained_model --> Acc >>> 25.354609929078016% | Loss를 맹신하지 말고 test를 돌려봐야 성능을 알 수 있다.
    # 학습시켰던 best.pt model --> Acc >>> 100.0%
    """net = models.resnet18(pretrained=False)
    net.load_state_dict(torch.load("./best.pt", map_location=device))""" # 이 부분을 test 시에 사용

# 디버깅 구간
# for i in train_dataset :
#     print(i)
# for i, (img, label) in enumerate(train_loader) :
#     print(img, label)
# for i, (img, label) in enumerate(val_loader) :
#     print(img, label)
# for i, (img, label) in enumerate(test_loader) :
#     print(img, label)