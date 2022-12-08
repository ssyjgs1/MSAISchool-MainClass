# 모서리 감지(cornerHarris) 후 원을 그려서 표시하기
import cv2
import numpy as np
import matplotlib.pyplot as plt
from utils import image_show

image_path = "./test01.jpg"
image_read = cv2.imread(image_path)
image_gray = cv2.cvtColor(image_read, cv2.COLOR_BGR2GRAY)

# 감지할 모서리 갯수
corners_true_detect = 4 # 몇 개를 감지할거냐
minimum_quality_score = 0.05
minimum_distance = 25

# 모서리 감지
corners = cv2.goodFeaturesToTrack(image_gray, corners_true_detect,
                                minimum_quality_score, minimum_distance)

for corner in corners:
    x, y = corner[0]
    cv2.circle(image_read, (int(x), int(y)), 10, (0,255,0), -1) # -1은 원이 채워서 나오게 함
    print("찾아낸 모서리 좌표들은 >>>", x, y)

image_gray_temp = cv2.cvtColor(image_read, cv2.COLOR_BGR2GRAY)
image_show(image_gray_temp)