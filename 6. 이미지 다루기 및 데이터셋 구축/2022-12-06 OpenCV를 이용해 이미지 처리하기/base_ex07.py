# emboss 필터를 만들어 이미지를 처리해보기
import cv2
import numpy as np
from utils import image_show

img_path = './car.png'
img = cv2.imread(img_path)

# emboss 필터 만들기
filter1 = np.array([[0,1,0],[0,0,0],[0,-1,0]])
emboss_img = cv2.filter2D(img, -1, filter1)

emboss_img += 128
image_show(emboss_img)

# emboss 필터 다른 예시로 만들기
filter2 = np.array([[-1,-1,0],[-1,0,1],[0,1,1]])
emboss_img = cv2.filter2D(img, -1, filter2)

emboss_img += 128
image_show(emboss_img)