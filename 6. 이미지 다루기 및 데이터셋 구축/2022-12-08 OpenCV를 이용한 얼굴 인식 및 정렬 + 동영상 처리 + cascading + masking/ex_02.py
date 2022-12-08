import cv2
import numpy as np

# ex-01
img_rectangle = np.ones((400,400), dtype='uint8')
cv2.rectangle(img_rectangle, (50,50), (300,300), (255,255,255), -1)
cv2.imshow('image show', img_rectangle)
cv2.waitKey(0)

# ex-02
img_circle = np.ones((400,400), dtype='uint8')
cv2.circle(img_circle,(300,300), 70, (255,255,255), -1)
cv2.imshow('image show', img_circle)
cv2.waitKey(0)

# ex-03
bitwiseAnd = cv2.bitwise_and(img_rectangle, img_circle)
cv2.imshow('image bitwiseAnd', bitwiseAnd)
cv2.waitKey(0)

bitwiseOr = cv2.bitwise_or(img_rectangle, img_circle)
cv2.imshow('image bitwiseOr', bitwiseOr)
cv2.waitKey(0)

bitwiseXor = cv2.bitwise_xor(img_rectangle, img_circle)
cv2.imshow('image bitwiseXor', bitwiseXor)
cv2.waitKey(0)

recNot = cv2.bitwise_not(img_rectangle)
cv2.imshow('image bitwiseNot', recNot)
cv2.waitKey(0)

circleNot = cv2.bitwise_not(img_circle)
cv2.imshow('image bitwiseNot', circleNot)
cv2.waitKey(0)

# ex-04 마스킹(하얀 빈 공간에 이미지 넣기 - 과제)
mask = np.zeros((683,1024), dtype='uint8')
rec1=cv2.rectangle(mask,(60,50),(280,280), (255,255,255), -1)
rec2=cv2.rectangle(mask, (420,50),(550,230), (255,255,255), -1)
rec3=cv2.rectangle(mask, (750,50),(920,280), (255,255,255), -1)
cv2.imwrite('./mask.png', mask)
mask = cv2.imread('./mask.png')

p1 = cv2.imread('./p1.jpg')
small_p1 = cv2.resize(p1,(220,230))
p2 = cv2.imread('./p2.jpeg')
small_p2 = cv2.resize(p2,(130,180))
p3 = cv2.imread('./p3.png')
small_p3 = cv2.resize(p3,(170,230))

p1x_offset = 60
p1y_offset = 50

p1x_end = p1x_offset + small_p1.shape[0]
p1y_end = p1y_offset + small_p1.shape[1]
mask[p1y_offset:p1y_end, p1x_offset:p1x_end] = small_p1

cv2.imshow('...', mask)
cv2.waitKey(0)