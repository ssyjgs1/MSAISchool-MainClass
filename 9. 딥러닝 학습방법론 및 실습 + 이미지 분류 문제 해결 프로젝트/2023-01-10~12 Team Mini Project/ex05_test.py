import os
import sys
import torch    
import torch.nn as nn
import copy
import matplotlib.pyplot as plt
import albumentations as A
from albumentations.pytorch.transforms import ToTensorV2
from torch.utils.data import DataLoader
from ex03_customdataset import CustomDataset
import pandas as pd
from tqdm import tqdm
from torchvision import models
from timm.loss import LabelSmoothingCrossEntropy
import rexnetv1


device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
def main():
    test_aug = A.Compose([
        A.SmallestMaxSize(max_size= 224),
        A.Resize(width= 200, height= 200),
        # A.CenterCrop(width= 180, height= 180),
        A.Normalize(mean=(0.485, 0.456, 0.406), std= (0.229, 0.224, 0.225)),
        ToTensorV2()
    ])

    test_dataset = CustomDataset("./dataset/test" , transform= test_aug)
    test_loader  = DataLoader(test_dataset, batch_size= 1, shuffle= False, num_workers= 2, pin_memory= True)

    ###### 수정해야 할 부분 !!!!!!!!!!!!!!!!!!!
    # model = models.__dict__["resnet50"](pretrained= False)
    # model.fc = nn.Linear(in_features= 2048, out_features= 2)
    # model.load_state_dict(torch.load("./best0.pt", map_location=device))
    # model.to(device)

    # model = models.__dict__["vgg16"](pretrained=False)
    # model.classifier[6] = nn.Linear(in_features= 4096, out_features= 2)
    # model.load_state_dict(torch.load("./best0.pt", map_location=device))
    # model.to(device)

    # model = models.__dict__["resnet18"](pretrained=False)
    # model.fc = nn.Linear(in_features= 512, out_features=2)
    # model.load_state_dict(torch.load("./result/3rd.pt", map_location=device))
    # model.to(device)

    model = rexnetv1.ReXNetV1()
    model.output[1] = nn.Conv2d(1280, 2, kernel_size=1, stride=1)
    model.load_state_dict(torch.load("./best0.pt"))
    model.to(device)


    test(model, test_loader, device)

def acc_function(correct, total) :
    acc = correct / total * 100
    return acc

def test(model, data_loader, device) :
    model.eval()
    correct = 0
    total = 0
    with torch.no_grad():
        for i, (image, label) in enumerate(data_loader) :
            images, labels = image.to(device), label.to(device)
            output = model(images)
            _, argmax = torch.max(output, 1)
            total += images.size(0)
            correct += (labels == argmax).sum().item()
        acc = acc_function(correct, total)
        print(f"acc >> {acc}%" )

if __name__ == '__main__':
    main()