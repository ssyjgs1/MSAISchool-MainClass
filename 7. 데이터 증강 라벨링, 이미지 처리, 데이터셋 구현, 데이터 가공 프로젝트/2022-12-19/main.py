from dataset_temp import custom_dataset
import albumentations as A
from albumentations.pytorch import ToTensorV2
from torch.utils.data import DataLoader
import torch

# device 정의
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)


# train에 augmentation 멕이기
train_transform = A.Compose([
    A.Resize(height=224, width=224),
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

# data loader
train_loader = DataLoader(train_dataset, batch_size=24, shuffle=True)
val_loader = DataLoader(val_dataset, batch_size=24, shuffle=False)




# 디버깅
# for i, (image, target) in enumerate(train_loader) :
#     print(i, image, target)