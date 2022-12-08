# 기본적인 이미지 처리 기술을 이용한 이미지 선명하게 해보기 -1
import cv2
import numpy as np

img = cv2.imread('./car.png',0) # 흑백으로 불러옴
print("이미지의 크기는 >>>", img.shape)
img_resize = cv2.resize(img, (320,240))

blurred_1 = np.hstack([
    cv2.blur(img_resize, (3, 3)),
    cv2.blur(img_resize, (5, 5)),
    cv2.blur(img_resize, (9, 9))
])
cv2.imshow('show', blurred_1)
cv2.imwrite('./blur.png',blurred_1)
cv2.waitKey(0)