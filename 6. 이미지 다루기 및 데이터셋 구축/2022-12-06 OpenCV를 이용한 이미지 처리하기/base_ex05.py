# Custom filter를 만들어 이미지를 처리해보기
import cv2
import numpy as np
from utils import image_show

image = cv2.imread('./car.png')

filter = np.array([[2,-1,-4],[-5,8,-7],[6,-2,3]])
custom_image_filter = cv2.filter2D(image, -1, filter)

image_show(custom_image_filter)