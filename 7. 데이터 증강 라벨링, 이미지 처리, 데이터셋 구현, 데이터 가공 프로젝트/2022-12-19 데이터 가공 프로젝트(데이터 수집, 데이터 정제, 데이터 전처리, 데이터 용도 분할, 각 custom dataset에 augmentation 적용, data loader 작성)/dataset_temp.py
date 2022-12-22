from torch.utils.data import Dataset
import os
import cv2
import glob

label_dict = {"dekopon" : 0, "grapefruit" : 1, "kanpei" : 2, "orange" : 3}

class custom_dataset(Dataset) :
    def __init__(self, image_file_path, transform=None) :
        self.image_file_paths = glob.glob(os.path.join(image_file_path, "*", "*.png"))
        # print(self.image_file_paths)
        self.transform = transform

    def __getitem__(self, index) :
        # image loader
        image_path = self.image_file_paths[index] # 여기서의 index는 랜덤. 단, 모든 데이터를 1번씩은 뽑아줌
        image = cv2.imread(image_path)
        # print(image)
        image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
        
        # label 붙이기
        label_temp = os.path.basename(image_path)
        label_temp = image_path.split("\\")
        # print(label_temp)
        label_temp = label_temp[1]
        label = label_dict[label_temp]
        # print(label)

        if self.transform is not None:
            image = self.transform(image=image)["image"]
        image = image.float()

        # print("이미지는 >>> ", image, "라벨은 >>> ", label)
        return image, label
        

    def __len__(self) :
        # print(len(self.image_file_paths))
        return len(self.image_file_paths)
        

# 디버깅 용도
if __name__ == '__main__' :
    test = custom_dataset("./dataset/train", transform=None)
    for i in test :
        pass