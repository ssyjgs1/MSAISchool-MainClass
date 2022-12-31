import torch
import glob
import os
from torch.utils.data import Dataset
# from albumentations.pytorch import ToTensorV2
# import albumentations as A
import numpy as np
import random
import cv2
from torchvision.transforms import transforms

"""랜덤 시드 설정"""
random_seed = 323
torch.manual_seed(random_seed)
torch.cuda.manual_seed(random_seed)
torch.cuda.manual_seed_all(random_seed) # if use multi-GPU
torch.backends.cudnn.deterministic = True
torch.backends.cudnn.benchmark = False
np.random.seed(random_seed)
random.seed(random_seed)


class customdataset(Dataset) :
    def __init__(self, img_path, transform=None) :
        # dataset / train / * / *.jpg
        self.all_img_path = glob.glob(os.path.join(img_path, "*", "*.jpg"))
        self.class_names = os.listdir(img_path)
        self.class_names.sort()
        self.transform = transform
        self.all_img_path.sort()
        self.labels = []
        
        for path in self.all_img_path :
            self.labels.append(self.class_names.index(path.split('\\')[1]))
        self.labels = np.array(self.labels)

    def __getitem__(self, item) :
        image_path = self.all_img_path[item]
        image = cv2.imread(image_path)
        # print(image)

        label = self.labels[item]
        label = torch.tensor(label)
        # print(label)

        if self.transform is not None :
            image = self.transform(image=image)["image"]
        # print(image_path, label)
        
        return image, label

    def __len__(self) :
        return len(self.all_img_path)

# test = customdataset("./dataset/train", transform=None)
# for i in test :
#     print(i)