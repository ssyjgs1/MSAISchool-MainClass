import cv2
import numpy as np
from utils import image_show

# 이미지 불러오기
image = cv2.imread('./test.jpg')

# 경계선 찾기(찾으려면 무조건 그레이스케일이어야 함)
image_gray = cv2.imread('./test.jpg', cv2.IMREAD_GRAYSCALE)

# 픽셀 강도의 중간값을 계산해보자
median_intensity = np.median(image_gray)
print("이 이미지의 중간값은 >>>", median_intensity)

# 중간 픽셀 강도에서 위아래 1 표준편차 떨어진 값을 임계값으로 설정한다
# 0.33 위치에 해당하는 값은 바꿔가면서 찾아야 한다
# ㄴ값을 높일수록 좀 진하게 경계를 잘 따는 모습이 있었음. 값 낮추면 반대로 선을 잘 못 잡았음
lower_threshold = int(max(0, (1.0-0.33) * median_intensity))
upper_threshhold = int(min(255, (1.0+0.33) * median_intensity))

# Canny edge Detection 적용하기
image_canny = cv2.Canny(image_gray, lower_threshold, upper_threshhold)
image_show(image_canny)