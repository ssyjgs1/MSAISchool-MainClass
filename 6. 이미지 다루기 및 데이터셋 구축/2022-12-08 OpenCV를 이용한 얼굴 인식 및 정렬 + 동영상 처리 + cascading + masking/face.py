# face cascade review
import cv2
import numpy as np

# face_casacade, eye_casacade 객체 생성(필요한 모듈 추가)
face_cascade = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
eye_cascade = cv2.CascadeClassifier('haarcascade_eye.xml')

# 이미지 불러오기
img = cv2.imread('./face.png')

# converting the image into grayscale
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

faces = face_cascade.detectMultiScale(gray, 1.1, 4) # 4의 이유는 좌표 4개(x,y,w,h)를 찍어 사각형을 만들기 위함이다

# defining and drawing the rectangles around the face
for (x, y, w, h) in faces :
    cv2.rectangle(img, (x,y), (x+w, y+h), (255,0,255), thickness=2) # (이미지, 좌측 상단 좌표, 하단 우측 좌표, 사각형 색, 선 두께)

# 관심영역(ROI) 설정
roi_gray = gray[y:(y+h), x:(x+w)]
roi_color = img[y:(y+h), x:(x+w)]

# eyes
eyes = eye_cascade.detectMultiScale(roi_gray, 1.1, 4)
print(eyes)
index = 0

# creating for loop in order to divide one eye from another
for (ex, ey, ew, eh) in eyes :
    if index == 0 :
        eye_1 = (ex, ey, ew, eh)
    elif index == 1 :
        eye_2 = (ex, ey, ew, eh)
    
    cv2.rectangle(roi_color, (ex,ey),(ex+ew, ey+eh), (0,0,255), 2)
    index += 1

if eye_1[0] < eye_2[0] :
    left_eye = eye_1
    right_eye = eye_2
else :
    left_eye = eye_2
    right_eye = eye_1

# central points of the rectangles
left_eye_center = (int(left_eye[0] + (left_eye[2]/2)), int(left_eye[1] + (left_eye[3] / 2)))
print(left_eye_center)
left_eye_center_x = left_eye_center[0]
left_eye_center_y = left_eye_center[1]

right_eye_center = (int(right_eye[0] + (right_eye[2]/2)), int(right_eye[1] + (right_eye[3] / 2)))
print(right_eye_center)
right_eye_center_x = right_eye_center[0]
right_eye_center_y = right_eye_center[1]

cv2.circle(roi_color, left_eye_center, 5, (255,0,0), -1)
cv2.circle(roi_color, right_eye_center, 5, (255,0,0), -1)
cv2.line(roi_color, left_eye_center, right_eye_center, (0,200,200), 3)

if left_eye_center_y > right_eye_center_y :
    A = (right_eye_center_x, left_eye_center_y)
    direction = -1 # 정수 -1은 이미지가 시계방향으로 회전함을 나타낸다
else :
    A = (left_eye_center_x, right_eye_center_y)
    direction = 1 # 정수 1은 이미지가 반시계방향으로 회전함을 나타낸다

cv2.circle(roi_color, A, 5, (255,0,0), -1)
cv2.line(roi_color, left_eye_center, A, (0,200,200), 3)
cv2.line(roi_color, right_eye_center, A, (0,200,200), 3)

# 각도 구하기
# np.arctan = 함수 단위는 라디안 단위
# 라디안 단위 --> 각도 : (theta * 180) / np.pi
delta_x = right_eye_center_x - left_eye_center_x
delta_y = right_eye_center_y - left_eye_center_y
angle = np.arctan(delta_y / delta_x)
angle = (angle * 180) / np.pi
print('변환한 각도는 >>>', angle) # 결과 : -21.80140948635181

h, w = img.shape[:2]

center = (w//2, h//2)
M = cv2.getRotationMatrix2D(center, (angle), 1.0)

rotated = cv2.warpAffine(img, M, (w, h))

cv2.imshow('face', img)
cv2.waitKey(0)