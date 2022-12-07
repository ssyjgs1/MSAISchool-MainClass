import cv2
import numpy as np

# face_casacade, eye_casacade 객체 생성하자(필요한 모듈 추가)
face_casacade = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
eye_casacade = cv2.CascadeClassifier('haarcascade_eye.xml')

# 이미지 불러오자
img = cv2.imread('face.png')
cv2.imshow('Image Show', img)
cv2.waitKey(0)

# 이미지를 그레이스케일로 변경하자
# casacade는 그레이 스케일 이미지에서만 작동한다
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# creating variable faces
# detectMultiScale(그레이 이미지, 축소할 이미지 배율, 최소 이웃 수)
faces = face_casacade.detectMultiScale(gray, 1.1, 4)

# 얼굴 주변에 사각형 정의하고 그려주자
for (x, y, w, h) in faces :
    cv2.rectangle(img, (x,y), (x+w, y+h), (0,255,0), 3)

cv2.imshow("face", img)
cv2.waitKey(0)

# 2개의 ROI 생성
roi_gray = gray[y:(y+h), x:(x+w)]
roi_color = img[y:(y+h), x:(x+w)]

# creating variable eyes
eyes = eye_casacade.detectMultiScale(roi_gray, 1.1, 4)
index = 0
"""
index 0 --> x 좌표
index 1 --> y 좌표
index 2 --> 사각형의 너비
마지막 인덱스 --> 사각형의 높이
"""

# creating for loop in order to divide one eye from another
for (ex, ey, ew, eh) in eyes :
    if index == 0 :
        eye_1 = (ex, ey, ew, eh)
    elif index == 1 :
        eye_2 = (ex, ey, ew, eh)

# drawing rectangles around the eyes
    cv2.rectangle(roi_color, (ex,ey), (ex+ew, ey+eh), (0,255,0), 3)
    index += 1

cv2.imshow('face', img)
cv2.waitKey(0)

if eye_1[0] < eye_2[0] :
    left_eye = eye_1
    right_eye = eye_2
else :
    left_eye = eye_2
    right_eye = eye_1

# calculating coordinates of a central points of the rectangles
left_eye_center = (int(left_eye[0] + (left_eye[2] / 2)), int(left_eye[1] + (left_eye[3] / 2)))
left_eye_x = left_eye_center[0]
left_eye_y = left_eye_center[1]
right_eye_center = (int(right_eye[0] + (right_eye[2] / 2)), int(right_eye[1] + (right_eye[3] / 2)))
right_eye_x = right_eye_center[0]
right_eye_y = right_eye_center[1]

cv2.circle(roi_color,  left_eye_center, 5, (255,0,0), -1)
cv2.circle(roi_color,  right_eye_center, 5, (255,0,0), -1)
cv2.line(roi_color, right_eye_center, left_eye_center, (0,200,200), 3)

cv2.imshow('face', img)
cv2.waitKey(0)

if left_eye_y > right_eye_y :
    A = (right_eye_x, left_eye_y)
    direction = -1
    # 정수 -1은 이미지를 시계 방향으로 회전 시킬 것을 나타냄
else :
    A = (left_eye_x, right_eye_y)
    direction = 1
    # 정수 1은 이미지를 반시계 방향으로 회전 시킬 것을 나타냄

cv2.circle(roi_color, A, 5, (255,0,0), -1)
cv2.line(roi_color, right_eye_center, left_eye_center, (0,200,200), 3)
cv2.line(roi_color, left_eye_center, A, (0,200,200), 3)
cv2.line(roi_color, right_eye_center, A, (0,200,200), 3)
cv2.imshow('face', img)
cv2.waitKey(0)

# np.arctan 함수는 라디안 단위로 각도를 반환한다
# 결과를 각도로 변환하려면 각도 θ에 180을 곱한 다음 π로 나누어야 한다
delta_x = right_eye_x - left_eye_x
delta_y = right_eye_y - left_eye_y
angle = np.arctan(delta_y / delta_x)
angle = (angle * 180) / np.pi

# 이미지를 θ만큼 회전시켜야함

# 이미지의 높이와 너비
h, w = img.shape[:2]
# calculating a center point of the image
# integer division "//" ensures that we receive whole number
center = (w//2, h//2)
# defining a matrix M and calling
# cv2.getRotationMatrix2D method
M = cv2.getRotationMatrix2D(center, (angle),  1.0)
# applying the rotation to our image using the cv2.warpAffine method
rotated = cv2.warpAffine(img, M, (w,h))
cv2.imshow('face', rotated)
cv2.waitKey(0)

dist_1 = np.sqrt((delta_x * delta_x) + (delta_y * delta_y))
dist_2 = np.sqrt((delta_x * delta_x) + (delta_y * delta_y))

# calculate the ratio
ratio = dist_1 / dist_2

# defining the width and height
h = 476
w = 488

# defining aspect ratio of a resized image
dim = (int(w * ratio), int(h * ratio))

# we have obtained a new image that we call resized3
resized = cv2.resize(rotated, dim)

cv2.imshow('face', resized)
cv2.waitKey(0)