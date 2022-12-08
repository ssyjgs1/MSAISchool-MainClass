# 이미지 회전
import cv2

# 이미지 경로
image_path = "./jgm.jpg"

# 이미지 읽기
image = cv2.imread(image_path)

img90 = cv2.rotate(image,cv2.ROTATE_90_CLOCKWISE) # 시계 방향으로 90도 회전
img180 = cv2.rotate(image,cv2.ROTATE_180) # 180도 회전
# 반시계 방향으로 90도 회전 = 시계 방향으로 270도 회전
img270 = cv2.rotate(image,cv2.ROTATE_90_COUNTERCLOCKWISE)

cv2.imshow("original image", image)
cv2.imshow("rotate_90", img90)
cv2.imshow("rotate_180", img180)
cv2.imshow("rotate_270", img270)
cv2.waitKey(0)

# 이미지 좌우 및 상하 반전
# 0 : 상하반전 | 1 : 좌우반전
dst_temp1 = cv2.flip(image, 1)
dst_temp2 = cv2.flip(image, 0)
cv2.imshow("up-down-twist", dst_temp2)
cv2.imshow("left-right-twist", dst_temp1)
cv2.waitKey(0)