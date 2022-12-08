# 머신러닝 특성 만들기(numpy - flatten)
import cv2
import numpy as np
from utils import image_show

image_path = "./jgm.jpg"
image_gray = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE) # 그레이 이미지로 불러오기

image_10x10 = cv2.resize(image_gray, (10,10))
image_10x10.flatten() # 이미지 데이터를 1차원 벡터로 변환해주자

image_show(image_10x10)