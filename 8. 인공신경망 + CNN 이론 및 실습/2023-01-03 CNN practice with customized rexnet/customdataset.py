import glob
import os
import cv2
from torch.utils.data import Dataset


class customdataset(Dataset) :
    def __init__(self, path, transform=None) :
        self.image_path = glob.glob(os.path.join(path, "*", "*.JPG"))
        self.transform = transform
        
        self.label_dict = {}
        for i, (category) in enumerate(os.listdir('./data/train/')) :
            self.label_dict[category] = int(i)

        self.image_list = []
        for img_path in self.image_path :
            image = cv2.imread(img_path)
            image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
            self.image_list.append(image)

        self.label_list = []
        for i in self.image_path :
            folder_name = i.split("\\")[1]
            label = self.label_dict[folder_name]
            self.label_list.append(label)

    def __getitem__(self, item):
        image = self.image_list[item]
        label = self.label_list[item]
        # print(image, label)

        if self.transform is not None :
            image = self.transform(image=image)["image"]
        return image, label

    def __len__(self):
        return len(self.image_path)

# 디버깅 목적

# if __name__ == "__main__" :
# cd_train = customdataset("./data/train", transform=None)

# for i in cd_train :
#     pass