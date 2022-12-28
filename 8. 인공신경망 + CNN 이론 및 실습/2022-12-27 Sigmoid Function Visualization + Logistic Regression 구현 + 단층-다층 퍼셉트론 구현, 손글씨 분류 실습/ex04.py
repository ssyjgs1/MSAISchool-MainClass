# pytorch의 nn.Linear와 nn.Sigmoid로 로지스틱 회귀 구현하기
import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

# train data -> tensor
x_data = [[1,2], [2,3], [3,1], [4,3], [5,3], [6,2]]
y_data = [[0], [0], [0], [1], [1], [1]]

# tensor로 변환
x_train = torch.FloatTensor(x_data)
y_train = torch.FloatTensor(y_data)

# nn.Sequential()은 Wx + b와 같은 수식과 sigmoid 함수 등과 같은 여러 함수들을 연결해주는 역할을 함
model = nn.Sequential( # 신경망 층을 쌓을 때 nn.Sequential 함수를 사용함
    nn.Linear(2,1), # x 입력은 2, y 출력은 1. ex) [1,2] --> [0]
    nn.Sigmoid() # 출력은 sigmoid function을 거침
)
# print(model(x_train))

optimizer = optim.SGD(model.parameters(), lr=0.1)
epoch_num = 1000

for epoch in range(epoch_num + 1) :
    output = model(x_train)

    # loss
    loss = F.binary_cross_entropy(output, y_train)

    # loss H(x) 개선
    optimizer.zero_grad()
    loss.backward()
    optimizer.step()

    if epoch % 10 == 0 :
        prediction = output >= torch.FloatTensor([0.5]) # 예측값이 0.5가 넘으면 True로 간주
        correct_prediction = prediction.float() == y_train # 실제값과 일치하는 경우만 True
        acc = correct_prediction.sum().item() / len(correct_prediction) # 정확도 계산
        print("Epoch : {:4d}/{}, Loss {:.6f}, Acc : {:.2f}%".format(
            epoch, epoch_num, loss.item(), acc * 100
        ))

print(model(x_train))