from torch.utils.data import Dataset
import os
import glob
import cv2

"""custom dataset : label 450개"""
class customDataset(Dataset) :
    def __init__(self, path, transform=None) :
        # path --> ./dataset/train/
        self.image_path = glob.glob(os.path.join(path, "*", "*.jpg")) # path를 어디까지 받을건지 고민해보자
        self.transform = transform

        """label dictionary 
        self.label_dict = {}
        for index, (category) in enumerate(sorted(os.listdir(path))) :
            print(index, category)
            self.label_dict[category] = int(index)""" # 이렇게 하는 방법도 있음

        self.label_dict = {}
        for i, (category) in enumerate(os.listdir('./dataset/train/')) :
            self.label_dict[category] = int(i)

        self.image_list = []
        for img_path in self.image_path :
            image = cv2.imread(img_path)
            image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
            self.image_list.append(image)

        self.label_list = []
        for i in self.image_path :
            folder_name = i.split('\\')[1]
            label = self.label_dict[folder_name]
            self.label_list.append(label)

    def __getitem__(self, item) :
        image = self.image_list[item]
        label = self.label_list[item]
        # print(image, label)

        if self.transform is not None :
            image = self.transform(image=image)["image"]
        return image, label

    def __len__(self) :
        return len(self.image_path)

# if __name__ == "__main__":
#     test = customDataset("./dataset/train/", transform=None)
#     for i in test :
#         print(i)