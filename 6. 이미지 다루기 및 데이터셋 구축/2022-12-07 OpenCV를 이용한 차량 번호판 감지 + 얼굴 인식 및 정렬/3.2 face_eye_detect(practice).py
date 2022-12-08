import cv2
import numpy as np

# face_casacade, eye_casacade 객체 생성(필요한 모듈 추가)
face_casacade = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
eye_casacade = cv2.CascadeClassifier('haarcascade_eye.xml')

# 이미지 불러오기
face_img = cv2.imread('./face.png')
face_gray = cv2.cvtColor(face_img, cv2.COLOR_BGR2GRAY)
faces = face_casacade.detectMultiScale(face_gray, 1.1, 4)

for (x,y,w,h) in faces:
    cv2.rectangle(face_img, (x,y),(x+w, y+h), (0,255,0), 3)
    # just one output
    # ROI 뜻 : 관심 영역
roi_img = face_img[y:y+h, x:x+w]
roi_gray = face_gray[y:y+h, x:x+w]

eyes = eye_casacade.detectMultiScale(roi_gray, 1.1, 4)
index = 0

for (ex,ey,ew,eh) in eyes :
    if index == 0 :
        eye_1 = (ex, ey, ew, eh)
    elif index == 1 :
        eye_2 = (ex, ey, ew, eh)
    
    cv2.rectangle(roi_img, (ex,ey),(ex+ew, ey+eh), (0,255,0), 3)
    index += 1

# 눈의 좌표 구하기 --> 각도 계산 --> 어파인 행렬 구하기 --> 이미지 어파인 변환

for (x,y,w,h) in eyes :
    cv2.rectangle(roi_img, (x,y), (x+w,y+h), (0,255,0), 3)

cv2.imshow('face', face_img)
cv2.waitKey(0)