# 다중 퍼셉트론으로 손글씨 분류
# sklearn에서 제공하는 이미지를 이용
import matplotlib.pyplot as plt
from sklearn.datasets import load_digits
import torch
import torch.nn as nn
from torch import optim

device = "cuda" if torch.cuda.is_available() else "cpu"

digits = load_digits()
print(digits)

# 1st sample 출력 .images[index] --> 8x8 행렬
print(digits.images[0])

# 실제 레이블도 숫자 0인지 첫 번째 샘플 레이어 확인 .target[index]
print(digits.target[0])

# 전체 이미지 갯수?
print("전체 이미지 갯수 >>>", len(digits.images))

# 상위 4개만 샘플 이미지를 확인
# zip() 함수 이용 (enumerate() 함수도 많이 사용함)
"""
image = [1,2,3,4]
label = [사과, 바나나, 자몽, 수박]
리스트 길이가 동일할 때 zip 이용 가능
--> 1 사과 2 바나나 3 자몽 4 수박
"""
image_and_label_list = list(zip(digits.images, digits.target))
for index, (image, label) in enumerate(image_and_label_list[:4]) :
    plt.subplot(2, 5, index+1)
    plt.axis('off')
    plt.imshow(image, cmap=plt.cm.gray_r, interpolation='nearest')
    plt.title('sample : %i' % label)
plt.show()

# 상위 레이블 5개 확인
for i in range(5) :
    print(i, "번 index sample label : ", digits.target[i])

# train data and label
x = digits.data # image data
y = digits.target # each image label
print(x, y)

model = nn.Sequential(
    nn.Linear(64, 32), # input layer = 64, hidden layer 1 = 32
    nn.ReLU(),
    nn.Linear(32, 16), # input layer 32, hidden layer 2 = 16
    nn.ReLU(),
    nn.Linear(16, 10) # input layer = 16, output_layer = 10
    # CrossEntrophyLoss() 이용 : output layer = 2 이상인 경우
)
print(model)

x = torch.tensor(x, dtype=torch.float32)
y = torch.tensor(y, dtype=torch.int64)
print(x, y)

loss_fun = nn.CrossEntropyLoss() # softmax를 포함한 손실함수
optimizer = optim.Adam(model.parameters())

losses = [] # loss graph 확인
epoch_number = 100

# train loop
for epoch in range(epoch_number + 1) :
    output = model(x) # 예측된 값

    loss = loss_fun(output, y)
    optimizer.zero_grad()
    loss.backward()
    optimizer.step()

    if epoch % 10 == 0 :
        print("Epoch : [{:4d}/{}], loss : {:.6f}".format(epoch, epoch_number, loss.item()))

    # append
    losses.append(loss.item())

plt.title("loss")
plt.plot(losses)
plt.show()