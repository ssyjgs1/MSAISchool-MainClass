import cv2
import matplotlib.pyplot as plt

image_path = "./jgm.jpg"

# 흑백 이미지 대비 높이기
image_gray = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE) # 그레이스케일로 변환
# print(image_gray.shape)
image_enhanced = cv2.equalizeHist(image_gray) # 히스토그램 평탄화

# plot으로 보기
fig, ax = plt.subplots(1,2, figsize=(10,5)) # 2개의 구역(오리지널, 평탄화 한 거)
ax[0].imshow(image_gray, cmap='gray') # cmap='gray'로 그레이 처리 해줄 수 있다
ax[0].set_title("Original Image")
ax[1].imshow(image_enhanced, cmap='gray')
ax[1].set_title("Enhanced Image")
plt.show()

# 컬러 이미지 대비 높이기
# 방법 : RGB --> YUV 컬러 포맷으로 변환 --> equlizeHist() --> RGB
# BGR로 되어 있는 걸 RGB로 바꿀 필요가 있음
image_bgr = cv2.imread(image_path, cv2.IMREAD_COLOR)

# RGB로 변환
image_rgb = cv2.cvtColor(image_bgr, cv2.COLOR_BGR2RGB)

# YUV로 변환
image_yuv = cv2.cvtColor(image_rgb, cv2.COLOR_BGR2YUV)

# 히스토그램 평활화
image_yuv[:, :, 0] = cv2.equalizeHist(image_yuv[:,:,0])

# RGB로 변환
image_rgb_temp = cv2.cvtColor(image_yuv, cv2.COLOR_YUV2RGB)

# plot으로 보기
fig, ax = plt.subplots(1,2, figsize=(12,8))
ax[0].imshow(image_rgb)
ax[0].set_title("Original Image")
ax[1].imshow(image_rgb_temp)
ax[1].set_title("Enhanced Color Image")
plt.show()