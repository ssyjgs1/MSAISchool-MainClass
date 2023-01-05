import albumentations as A
from albumentations.pytorch import ToTensorV2
import matplotlib.pyplot as plt
import copy
from customdataset import *


"""Augmentation 적용 함수"""
def aug_function(mode_flog) :
    if mode_flog == "train" :
        train_transform = A.Compose([
            A.SmallestMaxSize(max_size=400),
            A.Resize(width=256, height=256),
            A.RandomCrop(height=224, width=225),
            A.ShiftScaleRotate(shift_limit=0.05, scale_limit=0.06, rotate_limit=20, p=1),
            A.RGBShift(r_shift_limit=17, g_shift_limit=17, b_shift_limit=17, p=1),
            A.RandomBrightnessContrast(p=1),
            A.RandomShadow(p=1), 
            A.RandomFog(p=1),
            # A.RandomSnow(p=0.6), ==> 이미지가 심하게 망가짐
            A.HorizontalFlip(p=1),
            A.VerticalFlip(p=1),
            A.Normalize(mean=(0.485,0.456,0.406), std=(0.229,0.224,0.225)),
            ToTensorV2()
        ])
        return train_transform

    elif mode_flog == "val" : # 평가 부분엔 random 요소가 빠져야 함
        val_transform = A.Compose([
            A.SmallestMaxSize(max_size=400),
            A.Resize(width=256, height=256),
            A.CenterCrop(height=224, width=224), # train에선 RandomCrop하였으나 평가 부분에서는 고정하는 CenterCrop으로 변경
            A.Normalize(mean=(0.485,0.456,0.406), std=(0.229,0.224,0.225)),
            ToTensorV2()
        ])
        return val_transform


"""augmentations를 적용한 이미지 시각화 함수"""
def visualize_augmentations(dataset, idx=0, cols=5) :
    dataset = copy.deepcopy(dataset)
    samples = 5 # 몇 개의 이미지 샘플을 볼건지를 선언
    dataset.transform = A.Compose([t for t in dataset.transform if not isinstance(t, (A.Normalize, ToTensorV2))])
    rows = samples // cols
    figure, ax = plt.subplots(nrows=rows, ncols=cols, figsize=(12,6))

    for i in range(samples) :
        image, _ = dataset[idx]
        ax.ravel()[i].imshow(image)
        ax.ravel()[i].set_axis_off()
    plt.tight_layout()
    plt.show()


"""디버깅 용도"""
# if __name__ == "__main__" :
#     train_aug = aug_function(mode_flog="train")
#     train_dataset = customdataset("./dataset/train/", transform=train_aug)
#     visualize_augmentations(train_dataset)