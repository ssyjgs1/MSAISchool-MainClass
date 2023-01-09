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

model = rexnetv1.ReXNetV1()
# model = models.swin_t(weights='IMAGENET1K_V1')
model.load_state_dict(torch.load("./best.pt", map_location=device))
model.output[1] = nn.Conv2d(1280, 3, kernel_size=1, stride=1)
model.to(device)


test_transform = A.Compose([
    A.SmallestMaxSize(max_size = 256),
    A.Resize(height=224, width=224),
    A.Normalize(mean=(0.485, 0.456, 0.406), std=(0.229, 0.224, 0.225)),
    ToTensorV2()
])



test_dataset = customDataset("./dataset/test/", transform=test_transform)
test_loader = DataLoader(test_dataset, batch_size=1, shuffle=False, num_workers=2, pin_memory=True)
criterion = LabelSmoothingCrossEntropy()

def validation(model, test_loader, criterion, device) :
    print("검증을 시작합니다......")
    model.eval() # 모델을 평가 모드로 전환
    with torch.no_grad() :
        total = 0
        correct = 0
        total_loss = 0
        cnt = 0
        batch_loss = 0
        

        for i, (imgs, labels) in enumerate(test_loader) :
            imgs, labels = imgs.to(device), labels.to(device)
            output = model(imgs)
            loss = criterion(output, labels) # 모델이 예측한 거(output)랑 정답(label)이랑 비교한 차이 값(loss)
            batch_loss += loss.item()

            total += imgs.size(0)
            _, argmax = torch.max(output, 1)
            correct += (labels==argmax).sum().item()
            total_loss += loss.item()
            cnt += 1

    avrg_loss = total_loss / cnt # 평균 loss값
    val_acc = (correct / total * 100)
    print("Validation Accuracy : {:.2f} | Average Loss : {:.4f}".format(
        val_acc, avrg_loss
    ))
    model.train() # 평가를 마쳤으니 model을 학습 모드로 전환시켜줌
    return avrg_loss, val_acc

# validation(model, test_loader, criterion, device)
validation(model, test_loader, criterion, device)