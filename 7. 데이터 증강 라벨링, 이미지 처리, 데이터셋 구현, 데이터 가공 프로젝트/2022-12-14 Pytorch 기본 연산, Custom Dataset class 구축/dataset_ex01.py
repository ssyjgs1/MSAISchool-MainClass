from torch.utils.data.dataset import Dataset
from torchvision import transforms
import cv2

### custom dataset의 구조(필수로 있어야 하는 것들)
label_dic = {"cat" : 0, "dog" : 1}
class MyCustomDataset(Dataset) :
    def __init__(self, path, transforms = None) :
        # data path define
        self.all_data_path = "./image/*.jpg"
        self.transforms = transforms
        

    def __getitem__(self, index) :
        image_path = self.all_data_path[index]
        # "image01.jpg", "image02.jpg", "image03.jpg", ......
        label_temp = image_path.split("\\") # [. , image , cat.jpg]
        label_temp = label_temp[2]
        label_temp = label.temp.replace(".jpg", "") # cat만 남음
        label = label_dic[label_temp] # cat --> 0
        
        # image read
        image = cv2.imread(image_path)
        if self.transforms is not None :
            image = self.transforms(image)
        return image, label 
        return filename, bbox # 이미지, 박스 정보

        # augmentation
        # ㅁㅁㅁㅁ ~~~~ ㅁㅁㅁㅁ
        

    def __len__(self) :
        return len(self.all_data_path)

temp = MyCustomDataset("./dataset")
for i in temp :
    print(i) # image01, x:30 y:40 x:50 y:60 