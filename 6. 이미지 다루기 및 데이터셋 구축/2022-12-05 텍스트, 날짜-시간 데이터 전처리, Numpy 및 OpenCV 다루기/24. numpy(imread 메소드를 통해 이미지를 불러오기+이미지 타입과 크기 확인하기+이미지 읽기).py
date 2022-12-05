# imread() 메소드를 통해 이미지 불러오기
import cv2
import numpy as np

# 이미지 경로 설정하기
img_path = "./drxworlds.jpg"
img = cv2.imread(img_path)
print('이미지를 배열의 형태로 본다면 >>>', img)

# 이미지 타입과 크기 확인하기
h, w, _ = img.shape # 채널 변수 안 쓸거면 '_'로 작성
print('이미지 타입 : ', type(img))
print('이미지 크기 : ', img.shape) # (Height, Width, Channel) 순서로 나옴
print(f'이미지 높이 {h}, 이미지 너비 {w}')

# 이미지 읽기
cv2.imshow("DRX Worlds", img)
cv2.waitKey(0)