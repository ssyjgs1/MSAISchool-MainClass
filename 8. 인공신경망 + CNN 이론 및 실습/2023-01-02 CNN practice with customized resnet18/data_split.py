from sklearn.model_selection import train_test_split
import os
import glob
from PIL import Image
import cv2

# 데이터를 나누어주자
# 학습, 검증, 시험용 데이터(train, valid, test) --> 8 : 1 : 1
# 데이터 구조
"""
dataset
    - train
        - 각 라벨별 폴더
            - 각각 이미지.png
    - val
        - 각 라벨별 폴더
            - 각각 이미지.png
    - test
        - 각 라벨별 폴더
            - 각각 이미지.png
"""
# 1. 이미지 폴더 가져오기(각 라벨 별로 해줘야함)
img_cloudy_path = "./data/cloudy"
img_cloudy = glob.glob(os.path.join(img_cloudy_path, "*.jpg"))
img_desert_path = "./data/desert"
img_desert = glob.glob(os.path.join(img_desert_path, "*.jpg"))
img_green_area_path = "./data/green_area"
img_green_area = glob.glob(os.path.join(img_green_area_path, "*.jpg"))
img_water_path = "./data/water"
img_water = glob.glob(os.path.join(img_water_path, "*.jpg"))
print(len(img_cloudy), len(img_desert), len(img_green_area), len(img_water))

# 2. train, val, test 나누기
cloudy_train_list, cloudy_val_list = train_test_split(img_cloudy, test_size=0.2, random_state=323, shuffle=True)
cloudy_val_data, cloudy_test_data = train_test_split(cloudy_val_list, test_size=0.5, random_state=323, shuffle=True)
print(len(cloudy_train_list), len(cloudy_val_data), len(cloudy_test_data))
desert_train_list, desert_val_list = train_test_split(img_desert, test_size=0.2, random_state=323, shuffle=True)
desert_val_data, desert_test_data = train_test_split(desert_val_list, test_size=0.5, random_state=323, shuffle=True)
print(len(desert_train_list), len(desert_val_data), len(desert_test_data))
green_area_train_list, green_area_val_list = train_test_split(img_green_area, test_size=0.2, random_state=323, shuffle=True)
green_area_val_data, green_area_test_data = train_test_split(green_area_val_list, test_size=0.5, random_state=323, shuffle=True)
print(len(green_area_train_list), len(green_area_val_data), len(green_area_test_data))
water_train_list, water_val_list = train_test_split(img_water, test_size=0.2, random_state=323, shuffle=True)
water_val_data, water_test_data = train_test_split(water_val_list, test_size=0.5, random_state=323, shuffle=True)
print(len(water_train_list), len(water_val_data), len(water_test_data))

# 3. 각 폴더로 이미지 옮기기
def data_save(data, mode) :
    for path in data :
        """print(path)"""
        # 이미지 이름 구하기
        image_name = os.path.basename(path)
        image_name = image_name.replace(".jpg", "")
        """print(image_name)"""
        # 0. 폴더명 구하기
        folder_name = path.split("\\")
        folder_name = folder_name[0].split("/")
        folder_name = folder_name[2]
        """print(folder_name)""" # ./data/cloudy\train_38823.jpg ['./data/cloudy']
        # 1. 폴더 구성
        folder_path = f"./dataset/{mode}/{folder_name}"
        os.makedirs(folder_path, exist_ok=True)
        # 2. 이미지 읽기
        img = cv2.imread(path)
        # 3. 이미지 저장
        """print(os.path.join(folder_path, image_name+".png"))"""
        cv2.imwrite(os.path.join(folder_path, image_name+".png"), img)

data_save(cloudy_train_list, mode="train")
data_save(cloudy_val_data, mode="val")
data_save(cloudy_test_data, mode="test")
data_save(desert_train_list, mode="train")
data_save(desert_val_data, mode="val")
data_save(desert_test_data, mode="test")
data_save(green_area_train_list, mode="train")
data_save(green_area_val_data, mode="val")
data_save(green_area_test_data, mode="test")
data_save(water_train_list, mode="train")
data_save(water_val_data, mode="val")
data_save(water_test_data, mode="test")