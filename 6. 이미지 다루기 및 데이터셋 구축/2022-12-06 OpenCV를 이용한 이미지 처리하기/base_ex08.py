# 형태학적 변환 팽창과 침식 - python에서 확장, 침식 실험
import cv2
import matplotlib.pyplot as plt

# image loading and input image --> grayscale convert
img_path = './danggu.png'
img = cv2.imread(img_path, cv2.IMREAD_GRAYSCALE)

# 임계값 연산자의 출력을 mask라는 변수에 저장
# 앞에 꺼는 안 쓸 거다 --> '_'로 함. threshold가 2개 값을 뱉어내는데 하나만 쓸 것임
# 230보다 작으면 모든 값은 흰색으로 처리 + 230보다 크면 모든 값은 검은색으로 처리
_, mask = cv2.threshold(img, 230, 255, cv2.THRESH_BINARY_INV)

titles = ['image','mask']
images = [img, mask]

for i in range(2) :
    plt.subplot(1, 2, i+1),
    plt.imshow(images[i], 'gray'),
    plt.title(titles[i]),
    plt.xticks([]),
    plt.yticks([])
plt.show()