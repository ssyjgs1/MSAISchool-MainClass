# 배경 지우기
import cv2
import numpy as np
from utils import image_show

image_path = "./test.jpg"

# 이미지 읽기
image = cv2.imread(image_path)
# print(image)
print("이미지의 크기는 >>>",image.shape)

# 사각형 좌표 : 사각형 각 점의 x, y, 너비, 높이
rectangle = (0, 0, 400, 400)

# 초기 마스크 생성
mask = np.zeros(image.shape[:2], np.uint8)

# grabCut에 사용할 임시 배열 생성
bgdModel = np.zeros((1,65),np.float64)
fgdModel = np.zeros((1,65),np.float64)

# grabCut 실행
# image : 원본 이미지 | bgdModel : 배경을 위한 임시 배열 | fgdModel : 전경 배경
# 5 : 반복 횟수 | cv2.GC_INIT_WITH_RECT : 사각형을 초기화 | rectangle : 사각형
cv2.grabCut(image, mask, rectangle, bgdModel, fgdModel, 5, cv2.GC_INIT_WITH_RECT)

# 배경인 곳은 0, 그 외에는 1로 설정한 마스크 생성
mask_2 = np.where((mask==2) | (mask==0), 0, 1).astype('uint8')

# 이미지에 새로운 마스크를 곱해서 배경을 제외
image_rgb_nobg = image * mask_2[:,:,np.newaxis]
image_show(image_rgb_nobg)