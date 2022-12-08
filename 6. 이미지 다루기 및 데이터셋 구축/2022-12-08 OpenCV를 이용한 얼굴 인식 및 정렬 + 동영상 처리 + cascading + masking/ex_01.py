# 같은 크기의 이미지 블렌딩 실험
import cv2
import matplotlib.pyplot as plt
import numpy as np

large_img = cv2.imread('./tennis.png')
watermark = cv2.imread('./logo.png')
print('large_image size >>>', large_img.shape)
print('water mark image size >>>', watermark.shape)

img1 = cv2.resize(large_img,(800,600))
img2 = cv2.resize(watermark,(800,600))

print('img1 resize >>>', img1.shape)
print('img2 resize >>>', img2.shape)

# 이미지 혼합 진행

# 기본값 5:5
blended = cv2.addWeighted(img1, 0.5, img2, 0.5, 0)

# 9:1
blended = cv2.addWeighted(img1, 9, img2, 1, 0)

# 1로 설정
blended = cv2.addWeighted(img1, 1, img2, 1, 0)

cv2.imshow('blended image', blended)
cv2.waitKey(0)