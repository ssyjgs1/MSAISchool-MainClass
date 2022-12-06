# 평균색을 특성으로 인코딩
import cv2
import numpy as np

image_path = "./jgm.jpg"
image = cv2.imread(image_path)

channels = cv2.mean(image)
print('Channels >>>', channels)

# BGR을 RGB로 바꿔보자
observation = np.array([(channels[2], channels[1], channels[0])])
print("각 색상별(RGB) 평균 값은 >>>", observation)