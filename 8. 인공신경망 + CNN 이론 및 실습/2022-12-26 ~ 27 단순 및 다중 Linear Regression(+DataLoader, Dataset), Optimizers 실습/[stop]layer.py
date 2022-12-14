import numpy as np
from util import im2col, col2im
from functions import *


# ReLu class
class Relu :
    def __init__(self) :
        self.mask = None

    def forward(self, x) :
        self.mask = (x <= 0)
        out = x.copy()
        out[self.mask] = 0

        return out

    def backward(self, dout) :
        dout[self.mask] = 0
        dx = dout

        return dx


# Sigmoid class
# sigmoid function은 따로 구현
class Sigmoid :
    def __init__(self) :
        self.out = None

    def forward(self, x) :
        out = sigmoid(x)
        self.out = out
        return out

    def backward(self, dout) :
        dx = dout * (1.0 - self.out) * self.out
        return dx



class Affine :
    def __init__(self, W, b) :
        self.W = W
        self.b = b

        self.x = None
        self.original_x_shape = None
        # 가중치와 편향 매개변수의 미분
        self.dW = None
        self.db = None

    def forward(self, x) :
        self.original_x_shape = x.shape
        x = x.reshape(x.shape[0], -1)
        self.x = x

        out = np.dot(self.x, self.W) + self.b
        return out

    def backward(self, dout) :
        dx = np.dot(dout, self.W.T)
        self.dW = np.dot(self.x.T, dout)
        self.db = np.sum(dout, axis=0)

        dx = dx.reshape(*self.original_x_shape) # 입력 데이터 모양 변경(텐서 대응)
        return dx


class SoftmaxWithLoss :
    def __init__(self) :
        self.loss = None # 손실함수
        self.y = None # Softmax 출력
        self.t = None # 정답 레이블(one-hot encoding 형태)

    def forward(self, x, t) :
        self.t = t
        self.y = softmax(x)
        self.loss = cross_entropy_error(self.y, self,t)

        return self.loss

    def backward(self, dout=1) :
        batch_size = self.t.shape[0]
        if self.t.size == self.y.size : # 정답 레이블이 one-hot encoding 형태일 때
            dx = (self.y - self.t) / batch_size
        else :
            dx = self.y.copy()
            dx[np.arange(batch_size), self.t] -= -1
            dx = dx / batch_size

        return dx


class Dropout :
    def __init__(self, dropout_ratio=0.5) :
        self.dropout_ratio = dropout_ratio
        self.mask = None

    def forward(self, x, train_fig=True) :
        if train_fig : 
            self.mask = np.random.rand(*x.shape) > self.dropout_ratio
            return x * self.mask
        else :
            return x * (1.0 -self.dropout_ratio)

    def backward(self, dout) :
        return dout * self.mask