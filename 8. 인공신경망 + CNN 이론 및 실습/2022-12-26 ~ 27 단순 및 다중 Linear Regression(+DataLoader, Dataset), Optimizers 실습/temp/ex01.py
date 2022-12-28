"""단순 선형 회귀 실습"""
import torch
import torch.nn as nn
import torch.nn.functional as F # 활성화 함수 갖고옴
import torch.optim as optim


# random seed setting
torch.manual_seed(1)

# 실습을 위한 기본 설정 : 훈련 데이터 x_train, y_train을 선언
x_train = torch.FloatTensor(([1],[2],[3]))
y_train = torch.FloatTensor(([2],[4],[6]))

# x_train, y_train의 shape 출력
print(x_train, y_train.shape) # shape이나 size() 사용 가능
print(y_train, y_train.size())

# 가중치 w와 편향 b의 초기화 - 직선 찾기
w = torch.zeros(1, requires_grad=True) # requires_grad : 학습을 통해서 계속 값이 변경되는 변수
print(w)
b = torch.zeros(1, requires_grad=True)
print(b)

# 가설 세우기 = 직선의 방정식
hypothesis = w * x_train + b
print(hypothesis)

# loss function 선언하기
# 평균 제곱 오차 선언
loss = torch.mean((hypothesis - y_train) ** 2)
print(loss)

# optimizer 설정 - 경사하강법 구현
optimizer = optim.SGD([w, b], lr=0.01)

# 기울기 0으로 초기화
optimizer.zero_grad()
loss.backward()

# 학습 진행
epoch_number = 2000 # epoch : 전체 훈련 데이터가 학습에 한 번 사용된 주기(=전체 데이터를 다 읽은 횟수)

# train loop 생성
for epoch in range(epoch_number + 1) :
    
    # 1. 가설 --> model
    hypothesis = w * x_train + b

    # loss
    loss = torch.mean((hypothesis - y_train) ** 2)

    # loss H(x) 개선
    optimizer.zero_grad()
    loss.backward()
    optimizer.step() # optimizer 갱신 --> 다음 꺼 만나더라도 변경되서 들어갈 수 있도록 함

    # 100번마다 출력
    if epoch % 100 == 0 :
        print("Epoch {:4d} / {} W : {:.3f} b : {:.3f} loss : {:.6f}".format(
            epoch, epoch_number, w.item(), b.item(), loss.item()
        ))