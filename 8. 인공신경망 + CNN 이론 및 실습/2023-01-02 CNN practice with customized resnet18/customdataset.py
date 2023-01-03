import glob
import os
import cv2
import torch
from torch.utils.data import Dataset
import numpy as np
from PIL import Image

class customDataset(Dataset) :
    def __init__(self, path, transform=None) :
        # path -> dataset/train/
        self.all_img_path = glob.glob(os.path.join(path, "*", "*.png"))
        self.transform = transform
        self.label_dict = {"cloudy" : 0, "desert" : 1, "green_area" : 2, "water" : 3}
        """self.img_list = []
        for img_path in self.all_img_path :
            self.img_list.append(Image.open(img_path))""" # 이렇게도 할 수 있다 + save label list

    def __getitem__(self, item) :
        """img = self.img_list[item]
        print(img)""" # 위에 꺼랑 같이 이렇게도 할 수 있음
        img_path = self.all_img_path[item]
        label_temp = img_path.split("\\") # ['./dataset/train', 'cloudy', 'train_10021.png']
        label = self.label_dict[label_temp[1]]
        # print(label)
        img = Image.open(img_path)

        if self.transform is not None :
            img = self.transform(img)
        
        return img, label

    def __len__(self) :
        return len(self.all_img_path)

# 디버깅 모드
# test = customDataset("./dataset/train", transform=None)
# for i in test :
#     print(i)