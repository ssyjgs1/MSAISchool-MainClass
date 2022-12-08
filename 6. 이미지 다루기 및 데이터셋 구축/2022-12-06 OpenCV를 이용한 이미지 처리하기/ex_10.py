# 머신러닝 특성 만들기(numpy - flatten)(컬러이미지 크기 다르게 해서)
import cv2
import numpy as np
from utils import image_show

image_path = "./jgm.jpg"
image = cv2.imread(image_path)

# 이미지를 10x10 픽셀 크기로 변환해보자
image_color_10x10 = cv2.resize(image, (10,10))
image_shape_info = image_color_10x10.flatten().shape
print("image_shape_info flatten 한 값은 >>>", image_shape_info)
image_show(image_color_10x10)

# 이미지를 255x255 픽셀 크기로 변환해보자
image_color_255x255 = cv2.resize(image, (255,255))
image_color_255x255.flatten().shape
image_show(image_color_255x255)

# flatten 예제
x = np.array([[51,40],[14,19],[10,7]]) # 2차원 공간
x = x.flatten()
print("flatten으로 1차원으로 변환된 값은 >>>", x)