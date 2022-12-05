# 이미지 자르기
import cv2

def image_show(image) :
    cv2.imshow("Show", image)
    cv2.waitKey(0)

image_path = "./drxworlds.jpg"

# 이미지 읽기
image = cv2.imread(image_path)

# 이미지 자르기 [시작 : 끝 : 단계]
image_crop = image[200:,:600]

# 자른 이미지를 png파일로 저장해보자
cv2.imwrite("./drx_image_crop.png",image_crop)

# 이미지 열람
image_show(image_crop)