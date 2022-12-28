# 클래스로 pytorch 모델 구현 : 로지스틱 회귀
import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

# 1. x data, y data
x_data = [[1,2], [2,3], [3,1], [4,3], [5,3], [6,2]]
y_data = [[0], [0], [0], [1], [1], [1]]

# 2. x data, y data --> tensor 변환
x_train = torch.FloatTensor(x_data)
y_train = torch.FloatTensor(y_data)

class BinaryClassifier(nn.Module) :
    def __init__(self) :
        super().__init__()
        self.linear = nn.Linear(2,1) # input dimension = 2, output dimension = 1
        self.sigmoid = nn.Sigmoid() # 출력은 sigmoid 함수를 거친다.
    
    def forward(self, x) :
        return self.sigmoid(self.linear(x))

# 3. 모델 호출
model = BinaryClassifier()
print(model)

# 4. optimizer 설정
optimizer = optim.SGD(model.parameters(), lr=0.1, momentum=0.9)

# 5. 얼마만큼 반복할 거냐?
epoch_num = 1000

# 6. 학습
for epoch in range(epoch_num + 1) :
    output = model(x_train)

    # loss
    loss = F.binary_cross_entropy(output, y_train)

    # loss H(x) 개선
    optimizer.zero_grad() # gradient를 None으로 설정(=초기화)
    loss.backward()
    optimizer.step() # 단일 optimization step을 수행하고 pararmeter를 업데이트함

    if epoch % 10 == 0 :
        prediction = output >= torch.FloatTensor([0.5])
        correct_prediction = prediction.float() == y_train
        acc = correct_prediction.sum().item() / len(correct_prediction)
        print("Epoch : {:4d}/{}, Loss {:.6f}, Acc : {:.2f}%".format(
            epoch, epoch_num, loss.item(), acc * 100
        ))
        
print(model(x_train))