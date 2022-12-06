# 형태학적 변환 팽창과 침식 - python에서 확장, 침식 실험 예시 dilate함수 이용
import cv2
import matplotlib.pyplot as plt
import numpy as np

img_path = './danggu.png'
img_gray = cv2.imread(img_path, cv2.IMREAD_GRAYSCALE)
_, mask = cv2.threshold(img_gray, 230, 255, cv2.THRESH_BINARY_INV)

# 3x3 짜리 커널을 생성해보자
kernel = np.ones((3,3), np.uint8)
print("생성한 커널은 >>> \n", kernel)

dilation = cv2.dilate(mask, kernel)

titles = ['image','mask','dilation']
images = [img_gray,mask,dilation]

for i in range(3) :
    plt.subplot(1, 3, i+1)
    plt.imshow(images[i],'gray')
    plt.title(titles[i])
    plt.xticks([])
    plt.yticks([])
plt.show()