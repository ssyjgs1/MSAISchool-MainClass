# 컬러 이미지 읽기
import cv2
import matplotlib.pyplot as plt

image_path = "./drxworlds.jpg"

# 이미지 읽기
image = cv2.imread(image_path)

# BGR --> RGB 타입으로 변환
image_rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

# 이미지 사이즈 조정
image_50x50 = cv2.resize(image_rgb, (50,50))

# 이미지 저장하기
cv2.imwrite("./drx_image_50x50.png",image_50x50) # 여기선 convert 걸려서 색반전 된 채로 나옴

# 원본 이미지랑 사이즈 조정된 이미지 한 번에 보기
flg, ax = plt.subplots(1,2, figsize=(10, 5))
ax[0].imshow(image_rgb)
ax[0].set_title("Original Image")
ax[1].imshow(image_50x50)
ax[1].set_title("Resize Image")
plt.show()