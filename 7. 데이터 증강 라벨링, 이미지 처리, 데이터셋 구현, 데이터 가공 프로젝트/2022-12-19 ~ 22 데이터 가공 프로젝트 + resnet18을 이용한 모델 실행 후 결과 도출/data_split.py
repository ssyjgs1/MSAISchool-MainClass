from sklearn.model_selection import train_test_split
import os
import glob
import natsort
import cv2
import shutil

# 데이터 나누기
# train 80 val 10 test 10
"""
dataset
    train                  
        orange
            orange_00.png
        dekopon
        grapefruit
        kanpei
    val
        orange
            orange_00.png
        dekopon
        grapefruit
        kanpei
    test
        orange
            orange_00.png
        dekopon
        grapefruit
        kanpei
"""
image_path = "./dataset/image/"

# dekopon 이미지 경로 -> list
dekopon_data = glob.glob(os.path.join(image_path, "dekopon", "*.png"))
grapefruit_data = glob.glob(os.path.join(image_path, "grapefruit", "*.png"))
kanpei_data = glob.glob(os.path.join(image_path, "kanpei", "*.png"))
orange_data = glob.glob(os.path.join(image_path, "orange", "*.png"))

# test data X
# train val 9:1
dekopon_data_train, dekopon_data_val = train_test_split(dekopon_data, test_size=0.1, random_state=7777)
grapefruit_data_train, grapefruit_data_val = train_test_split(grapefruit_data, test_size=0.1, random_state=7777)
kanpei_data_train, kanpei_data_val = train_test_split(kanpei_data, test_size=0.1, random_state=7777)
orange_data_train, orange_data_val = train_test_split(orange_data, test_size=0.1, random_state=7777)

for i in dekopon_data_train:
    file_name = os.path.basename(i)
    os.makedirs("./dataset/train/dekopon/", exist_ok=True)
    shutil.move(i, f"./dataset/train/dekopon/{file_name}")

for i in dekopon_data_val:
    file_name = os.path.basename(i)
    os.makedirs("./dataset/val/dekopon/", exist_ok=True)
    shutil.move(i, f"./dataset/val/dekopon/{file_name}")

for i in grapefruit_data_train:
    file_name = os.path.basename(i)
    os.makedirs("./dataset/train/grapefruit/", exist_ok=True)
    shutil.move(i, f"./dataset/train/grapefruit/{file_name}")

for i in grapefruit_data_val:
    file_name = os.path.basename(i)
    os.makedirs("./dataset/val/grapefruit/", exist_ok=True)
    shutil.move(i, f"./dataset/val/grapefruit/{file_name}")

for i in kanpei_data_train:
    file_name = os.path.basename(i)
    os.makedirs("./dataset/train/kanpei/", exist_ok=True)
    shutil.move(i, f"./dataset/train/kanpei/{file_name}")

for i in kanpei_data_val:
    file_name = os.path.basename(i)
    os.makedirs("./dataset/val/kanpei/", exist_ok=True)
    shutil.move(i, f"./dataset/val/kanpei/{file_name}")

for i in orange_data_train:
    file_name = os.path.basename(i)
    os.makedirs("./dataset/train/orange/", exist_ok=True)
    shutil.move(i, f"./dataset/train/orange/{file_name}")

for i in orange_data_val:
    file_name = os.path.basename(i)
    os.makedirs("./dataset/val/orange/", exist_ok=True)
    shutil.move(i, f"./dataset/val/orange/{file_name}")