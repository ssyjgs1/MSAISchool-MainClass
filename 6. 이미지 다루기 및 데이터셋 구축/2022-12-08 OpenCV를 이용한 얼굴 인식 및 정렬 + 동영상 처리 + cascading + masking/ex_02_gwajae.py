# 하얀 빈 공간에 이미지 넣기 - 과제(인물 cascading 해서 넣으면 더 좋다)
import cv2
import numpy as np

drx = cv2.imread('./drx.png') # 원본 이미지 불러오기
cv2.imshow('DRX', drx)
cv2.waitKey(0)

face_cascade = cv2.CascadeClassifier('./haarcascade_frontalface_default.xml')

drx_gray = cv2.cvtColor(drx, cv2.COLOR_BGR2GRAY) # 얼굴 찾기 해주기 위해 그레이스케일로 변환
cv2.imshow('DRX Gray', drx_gray)
cv2.waitKey(0)

faces = face_cascade.detectMultiScale(drx_gray, 1.1, 4)

face_crop = [] # 빈 공간 생성
for (x, y, w, h) in faces : # 얼굴 정보 찾은 거 상기 생성한 빈 공간에 추가
    face_crop.append(drx[y:(y+h), x:(x+w)])
    cv2.rectangle(drx, (x,y), (x+w, y+h), (10,100,250), thickness=2) # 원본 그림에 객체 찾은 거 추가
cv2.imshow('DRX-face-line', drx)
cv2.waitKey(0)

# 과제 구간
mask = np.zeros((683, 1024, 3), dtype='uint8') 
cv2.rectangle(mask,(60,50),(280,280), (255,255,255), -1)
cv2.rectangle(mask, (420,50),(550,230), (255,255,255), -1)
cv2.rectangle(mask, (750,50),(920,280), (255,255,255), -1)
cv2.imshow('Original Mask', mask)
cv2.waitKey(0)

x_offset, y_offset, x_end, y_end, resize_face_crop = [60,420,750], [50,50,50], [280,550,920], [280,230,280], [] # 오프셋, 끝점, 사이즈 변경 빈공간 생성

for i in range(len(face_crop)) :
    resize_face_crop.append(cv2.resize(face_crop[i], (x_end[i] - x_offset[i], y_end[i] - y_offset[i])))
    mask[y_offset[i] : y_offset[i] + resize_face_crop[i].shape[0], x_offset[i] : x_offset[i] + resize_face_crop[i].shape[1]] = resize_face_crop[i]
cv2.imshow('AAK', mask)
cv2.waitKey(0)