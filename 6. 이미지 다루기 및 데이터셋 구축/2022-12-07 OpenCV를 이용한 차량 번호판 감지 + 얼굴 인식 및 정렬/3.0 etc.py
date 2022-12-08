from PIL import Image
import cv2
"""
openCV --> np array 형식 : bgr 채널
Image --> pil image 형식 : rgb 채널
"""
img = cv2.imread('./dgg.png')
rgb_img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
pil_img = Image.fromarray(rgb_img)
# pil image 형식은 메타데이터를 다룰 수 있음
pil_img.show() # pil의 show 기능은 OS에서 기본적으로 사용하는 이미지 뷰어로 보여줌