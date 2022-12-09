import cv2
import numpy as np

face_cascade = cv2.CascadeClassifier('./haarcascade_frontalface_default.xml')

# 이미지 3장을 갖고와서 각각 불러와서 진행
chiyo = cv2.imread('./chiyo.jpg')
taiga = cv2.imread('./taiga.jpg')
yui = cv2.imread('./yui.png')

# chiyo
chiyo_gray = cv2.cvtColor(chiyo, cv2.COLOR_BGR2GRAY)
chiyo_faces = face_cascade.detectMultiScale(chiyo_gray, 1.1, 4)
for (x, y, w, h) in chiyo_faces :
    cv2.rectangle(chiyo_gray, (x,y), (x+w,y+h), (255,0,255), 2)
chiyo_roi = chiyo[y : y+h , x : x+w]

# taiga
taiga_gray = cv2.cvtColor(taiga, cv2.COLOR_BGR2GRAY)
taiga_faces = face_cascade.detectMultiScale(taiga_gray, 1.1, 4)
for (x, y, w, h) in taiga_faces :
    cv2.rectangle(taiga_gray, (x,y), (x+w,y+h), (255,0,255), 2)
taiga_roi = taiga[y : y+h , x : x+w]

# yui
yui_gray = cv2.cvtColor(yui, cv2.COLOR_BGR2GRAY)
yui_faces = face_cascade.detectMultiScale(yui_gray, 1.1, 4)
for (x, y, w, h) in yui_faces :
    cv2.rectangle(yui_gray, (x,y), (x+w,y+h), (255,0,255), 2)
yui_roi = yui[y : y+h , x : x+w]

cv2.imshow('chiyo', chiyo)
cv2.imshow('taiga', taiga)
cv2.imshow('yui', yui)
cv2.waitKey(0)

chiyo_crop = cv2.resize(chiyo_roi, (220,230))
taiga_crop = cv2.resize(taiga_roi,(130,180))
yui_crop = cv2.resize(yui_roi,(170,230))

mask = np.zeros((683, 1024, 3), dtype='uint8')
cv2.rectangle(mask,(60,50),(280,280), (255,255,255), -1)
cv2.rectangle(mask, (420,50),(550,230), (255,255,255), -1)
cv2.rectangle(mask, (750,50),(920,280), (255,255,255), -1)

mask[50:280, 60:280, :] = chiyo_crop
mask[50:230, 420:550, :] = taiga_crop
mask[50:280, 750:920, :] = yui_crop

cv2.imshow('Final', mask)
cv2.waitKey(0)