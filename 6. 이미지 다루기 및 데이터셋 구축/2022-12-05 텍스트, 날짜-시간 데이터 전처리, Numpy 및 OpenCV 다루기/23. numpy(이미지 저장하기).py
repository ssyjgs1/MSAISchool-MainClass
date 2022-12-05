import numpy as np
import cv2

# 이미지 경로를 imread 안에 줘야함
x = cv2.imread("./drxworlds.jpg",0) # 뒤에 ,0 주면 흑백. ,1 주면 컬러.
y = cv2.imread("./drxworlds.jpg",1) # 뒤에 ,0 주면 흑백. ,1 주면 컬러.

# 갖고 있는 이미지가 너무 화소수(7580 x 5056)가 커서 리사이즈;;
ximg = cv2.resize(x, (1280,800))
yimg = cv2.resize(y, (1280,800))

# 이미지 열어보기
# cv2.imshow("drxworlds image show gray", ximg)
# cv2.imshow("drxworlds image show color", yimg)
# cv2.waitKey(0) # waitKey 안 주면 화면 바로 꺼짐;;

# 여러개 파일 save하는 방법 (.npz)
np.savez("./image.npz", array1=ximg, array2=yimg)

# 압축 방법
np.savez_compressed("./image_compressed.npz", array1=ximg, array2=yimg)

# npz 데이터 불러오기
data = np.load("./image_compressed.npz")

result1 = data['array1']
result2 = data['array2']

cv2.imshow("result01", result1)
cv2.waitKey(0)
cv2.imshow("result02", result2)
cv2.waitKey(0)