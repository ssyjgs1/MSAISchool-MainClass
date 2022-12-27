"""다중 선형 회귀 분석 실습"""

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

# 앞서 배운 x가 1개인 선형 회귀를 단순 선형 회귀라고 하며
# 다수의 x로부터 y를 예측하는 선형 회귀를 다중 선형 회귀라고 함
x1_train = torch.FloatTensor(([73],[93],[83],[96],[107]))
x2_train = torch.FloatTensor(([72],[91],[88],[92],[67]))
x3_train = torch.FloatTensor(([100],[99],[85],[95],[77]))
y_train = torch.FloatTensor(([152], [180], [203], [142], [103]))

# 가중치 w와 편항 b를 선언 --> w는 3개 필요, b는 1개 필요
w1 = torch.zeros(1, requires_grad=True)
w2 = torch.zeros(1, requires_grad=True)
w3 = torch.zeros(1, requires_grad=True)
b = torch.zeros(1, requires_grad=True)

# optimizer
optimizer = optim.SGD([w1, w2, w3, b], lr=1e-6)

# 학습 몇 번 돌릴래?
epoch_number = 100000
for epoch in range(epoch_number + 1) :

    # 가설
    hypothesis = w1 * x1_train + w2 * x2_train + w3 * x3_train + b

    # loss
    # loss의 감소가 회귀분석 결과의 신뢰도 상승과 동일하다고 보기엔 애매하다.
    loss = torch.mean((hypothesis - y_train) ** 2)
    
    # loss H(x) 개선 필요
    optimizer.zero_grad()
    loss.backward()
    optimizer.step()

    if epoch % 100 == 0 :
        print("Epoch {:4d} / {} w1 {:.3f} w2 {:.3f} w3 {:.3f} b {:.3f} loss {:.6f}".format(
            epoch, epoch_number, w1.item(), w2.item(), w3.item(), b.item(), loss.item()
        ))