# 이미지 이진화(임계처리)(+적응적 이진화)
import cv2
from utils import image_show

# 이미지 경로 지정
image_path = "./jgm.jpg"

# 이미지 이진화
image_gray = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)
max_output_value = 255 # 0~255 값을 가지는 그레이스케일 특성
neighborhood_size = 55 # 구조상 짝수 불가능(?)
subtract_from_mean = 5 # 값 높이면 검정색이 많이 죽어버림 --> 새하얘짐

image_binary = cv2.adaptiveThreshold(image_gray, max_output_value,
                                    cv2.ADAPTIVE_THRESH_GAUSSIAN_C,
                                    cv2.THRESH_BINARY, neighborhood_size, 
                                    subtract_from_mean)
                                    # THRESH_BINARY_INV 넣으면 흑백 반전됨
image_show(image_binary)