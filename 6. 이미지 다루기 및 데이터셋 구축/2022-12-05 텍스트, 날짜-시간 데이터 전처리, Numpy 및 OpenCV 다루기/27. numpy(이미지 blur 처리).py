import cv2
# from 26. numpy(이미지 자르기) import image_show

def imshow(image) :
    cv2.imshow("show", image)
    cv2.waitKey(0)

image_path = "./drxworlds.jpg"

# 이미지 읽기
image = cv2.imread(image_path)

# 이미지 blur 처리
image_blury = cv2.blur(image, (5,5))
imshow(image_blury)