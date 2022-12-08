# 모서리 감지(cornerHarris)
import cv2
import numpy as np
import matplotlib.pyplot as plt
from utils import image_show

image_path = "./test01.jpg"
image_read = cv2.imread(image_path)
image_gray = cv2.cvtColor(image_read, cv2.COLOR_BGR2GRAY)
image_gray = np.float32(image_gray)

# 모서리 감지 매개 변수 설정
block_size = 2
aperture = 29 # 크기
free_parameter = 0.04 # 이웃한 픽셀이랑 얼마나 근접하게 할거냐?

detector_response = cv2.cornerHarris(image_gray, block_size, aperture, free_parameter)
print("모서리 감지된 값들은 >>>",detector_response)

threshold = 0.02
image_read[detector_response > threshold * detector_response.max()] = [255,255,255]

image_gray = cv2.cvtColor(image_read, cv2.COLOR_BGR2GRAY)
image_show(image_gray)