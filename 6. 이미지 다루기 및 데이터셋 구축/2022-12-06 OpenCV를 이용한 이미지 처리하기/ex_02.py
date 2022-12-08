# 가우시안 블러 : 조금 더 부드러운 블러 표현
# 야간, 어두운 이미지에는 별로 좋지 않음
import cv2
from utils import image_show

image_path = './jgm.jpg'

# 이미지 읽기
image = cv2.imread(image_path)

image_g_blury = cv2.GaussianBlur(image,(7,7),0) # 숫자 바꿔가며 blur 정도 수정
image_show(image_g_blury)