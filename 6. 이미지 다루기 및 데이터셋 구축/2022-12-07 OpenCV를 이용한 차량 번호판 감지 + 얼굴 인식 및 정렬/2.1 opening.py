"""
opening : erosin --> dilation(to delete dot noise)
"""
# 파일 경로 잡을 때(상대 위치)
# . --> 현재 위치
# .. --> 부모 디렉토리 위치

import numpy as np
import cv2
import matplotlib.pyplot as plt
import os
import koreanize_matplotlib

img = cv2.imread('./dgg.png', cv2.IMREAD_GRAYSCALE)
_, mask = cv2.threshold(img, 230, 255, cv2.THRESH_BINARY_INV)

# data type : int, float --> python에서는 메모리 제한이 없음
kernel = np.ones((3,3), np.uint8)

N = 5
idx = 1
plt.figure(figsize=(15,15))

for i in range(1, N+1):
    erosion = cv2.erode(mask, kernel, iterations=i)
    opening = cv2.dilate(erosion, kernel, iterations=i)
    f_opening = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel, iterations=i)

    plt.subplot(N,2,idx)
    idx += 1
    plt.imshow(opening, 'gray')
    plt.title(f'{i} manual opening')

    plt.subplot(N,2,idx)
    plt.imshow(f_opening, 'gray')
    plt.title(f'{i} function opening')
    idx += 1

plt.show()