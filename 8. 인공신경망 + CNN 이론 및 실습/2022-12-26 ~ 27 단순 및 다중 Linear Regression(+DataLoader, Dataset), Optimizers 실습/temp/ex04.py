"""다중 선형 회귀 분석을 Dataset, Dataloader를 선언해서 해보자"""

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torch.utils.data import TensorDataset, DataLoader


# 데이터 생성
x_train = torch.FloatTensor([[73, 80, 75], # input 3
                             [93, 88, 93],
                             [89, 91, 90],
                             [96, 98, 100],
                             [73, 66, 70]])
y_train = torch.FloatTensor([[152], [185], [180], [196], [142]]) # ouput 1

# TensorDataset 입력으로 사용하고 dataset을 지정합니다.
dataset = TensorDataset(x_train, y_train)

# DataLoader
dataloader = DataLoader(dataset, batch_size=2, shuffle=True)

# model 설계
model = nn.Linear(3,1)
optimizer = torch.optim.SGD(model.parameters(), lr=1e-5)

# train loop
epochs_number = 300
for epoch in range(epochs_number + 1) :
    for batch_idx, sample in enumerate(dataloader) :
        # print(batch_idx)
        # print(sample)
        x_train, y_train = sample

        prediction = model(x_train)

        # loss
        loss = F.mse_loss(prediction, y_train)

        # loss H(x) 개선
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        if epoch % 10 == 0 :
            print("Epoch {:4d} / {} batch {} / {} loss : {:.6f}".format(
                epoch, epochs_number, batch_idx + 1, len(dataloader), loss.item()
            ))

test_val = torch.FloatTensor([[73, 80, 75]])
pred_y = model(test_val)
print(pred_y.item())