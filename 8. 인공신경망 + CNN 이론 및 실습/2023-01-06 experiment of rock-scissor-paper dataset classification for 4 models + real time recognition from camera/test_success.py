import matplotlib.pyplot as plt
import torch.nn as nn
import torch
from torchvision import models
import albumentations as A
from customdataset import customDataset
from albumentations.pytorch.transforms import ToTensorV2
from torch.utils.data import DataLoader
from timm.loss import LabelSmoothingCrossEntropy
import rexnetv1


device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
def main():
    test_transform = A.Compose([
        A.SmallestMaxSize(max_size = 256),
        A.Resize(height=224, width=224),
        A.Normalize(mean=(0.485, 0.456, 0.406), std=(0.229, 0.224, 0.225)),
        ToTensorV2()
    ])

    # test_dataset  = customDataset("수정할곳" , transform= test_transform)
    test_dataset  = customDataset("./dataset/test" , transform= test_transform)
    test_loader = DataLoader(test_dataset, batch_size= 1, shuffle= False, num_workers= 2, pin_memory= True)

    # 수정해야 할 부분
    model = rexnetv1.ReXNetV1()
    model.output[1] = nn.Conv2d(1280, 3, kernel_size=1, stride=1)

    # model = models.swin_t(weights='IMAGENET1K_V1')
    model.load_state_dict(torch.load("./best.pt", map_location=device))
    model.to(device)
    

    # net = rexnetv1.ReXNetV1()
    # net.load_state_dict(torch.load("./rexnetv1_1.0.pth"))
    # net.output[1] = nn.Conv2d(1280, 3, kernel_size=1, stride=1)
    # net.to(device)


    criterion = LabelSmoothingCrossEntropy()
    optimizer = torch.optim.AdamW(model.parameters(), lr=0.0001)
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