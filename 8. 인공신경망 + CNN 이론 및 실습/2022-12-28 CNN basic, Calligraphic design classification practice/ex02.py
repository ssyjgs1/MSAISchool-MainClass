"""
전체 폴더 30개 
train -> 0 ~ 9 
dataset 
    train 
        0
        1
        2
        3
        4
        5
        6
        7
        8
        9
    val
        0 ~ 9
"""
import os
import glob

jpg_data = glob.glob(os.path.join("./dataset/", "train_image", "*", "*.jpg"))
png_data = glob.glob(os.path.join("./dataset/", "train_image", "*", "*.png"))
jpeg_data = glob.glob(os.path.join("./dataset/", "train_image", "*", "*.jpeg"))
path = os.listdir("./dataset")
print(path)
print(len(jpg_data))
print(len(png_data))
print(len(jpeg_data))