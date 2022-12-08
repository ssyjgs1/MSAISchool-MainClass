# 하얀 빈 공간에 이미지 넣기 - 과제(인물 cascading 해서 넣으면 더 좋다)
import cv2
import numpy as np

drx = cv2.imread('./drx.png')
print(drx.shape)
cv2.imshow('DRX', drx)
cv2.waitKey(0)

mask = np.zeros((683,1024), dtype='uint8')
rec1=cv2.rectangle(mask,(60,50),(280,280), (255,255,255), -1)
rec2=cv2.rectangle(mask, (420,50),(550,230), (255,255,255), -1)
rec3=cv2.rectangle(mask, (750,50),(920,280), (255,255,255), -1)

cv2.imshow('Mask', mask)
cv2.waitKey(0)