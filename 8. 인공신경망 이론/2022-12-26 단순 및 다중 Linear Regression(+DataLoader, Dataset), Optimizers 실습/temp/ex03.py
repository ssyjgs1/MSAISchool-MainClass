"""다중 선형 회귀 분석을 class를 선언해서 해보자"""
import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim


# 데이터 생성
x_train = torch.FloatTensor([[73, 80, 75], # input 3
                             [93, 88, 93],
                             [89, 91, 90],
                             [96, 98, 100],
                             [73, 66, 70]])
y_train = torch.FloatTensor([[152], [185], [180], [196], [142]]) # ouput 1


# class 생성
class MultivariateLinearRegressionModel(nn.Module) :
    def __init__(self) :
        super().__init__()
        self.linear = nn.Linear(3, 1) # input 3 ouput 1
            
    def forward(self, x) :
        return self.linear.forward(x)


# model 정의
model = MultivariateLinearRegressionModel()

# optimizer
optimizer = torch.optim.SGD(model.parameters(), lr=1e-5)

# train loop
epochs_number = 1000000
for epoch in range(epochs_number + 1) :

    # model
    prediction = model(x_train)

    # loss - pytorch에서 제공하는 평균 제곱 오차 방법 사용
    loss = F.mse_loss(prediction, y_train)

    # loss 개선
    optimizer.zero_grad() # 기울기 0으로 초기화
    loss.backward() # loss 함수를 미분해서 기울기 계산
    optimizer.step() # w, b를 업데이트

    if epoch % 100 == 0 :
        print("Epoch : {:4d} / {} loss : {:.6f}".format(
            epoch, epochs_number, loss.item()
        ))

new_var = torch.FloatTensor([[73, 82, 72]])
pred_y = model(new_var)
print(f"훈련 후 입력이 {new_var} 예측값 : {pred_y}")