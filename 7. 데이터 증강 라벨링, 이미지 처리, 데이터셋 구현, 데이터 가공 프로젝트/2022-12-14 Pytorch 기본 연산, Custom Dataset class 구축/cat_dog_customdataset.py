"""
dataset
    train
        cat
            catN.jpg....
        dog
            dogN.jpg....
    val
        cat
            catN.jpg....
        dog
            catN.jpg....
    test
        cat
            catN.jpg....
        dog
            catN.jpg....
"""
from torch.utils.data.dataset import Dataset
import os
import glob
from PIL import Image

label_dic = {"cat" : 0, "dog" : 1}

class cat_dog_mycustomdataset(Dataset) :
    
    # csv, folder 등 읽기, 변환 할당, 데이터 필터링 등과 같은 초기 논리가 발생
    # data_path --> ./dataset/train
    # train --> ./dataset/train/
    # val --> ./dataset/val/
    # test --> ./dataset/test/
    def __init__(self, data_path) :
        self.all_path_data = glob.glob(os.path.join(data_path, '*', '*.jpg')) # --> dataset/train/cat/ or dog/ | 모든 jpg 파일을 읽어옴
        # print(self.all_path_data)

    # 데이터 레이블 반환 image, label
    def __getitem__(self, index) :
        image_path = self.all_path_data[index]
        print(image_path)
        img = Image.open(image_path).convert("RGB")
        label_temp = image_path.split("\\")
        label = label_dic[label_temp[1]]
        print(img, label)
        return img, label
        
    # 전체 데이터의 길이 반환
    def __len__(self) :
        return len(self.all_path_data)
        

test = cat_dog_mycustomdataset("./dataset/train/")

for i in test :
    print(i)
    pass