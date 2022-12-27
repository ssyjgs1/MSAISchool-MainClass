# w값이 변함에 따라 경사도가 변화하는 그래프 시각화
import numpy as np
import matplotlib.pyplot as plt


def sigmoid(t) :
    return 1/(1+np.exp(-t))


x = np.arange(-5.0, 5.0, 0.1)
print(x)
y1 = sigmoid(0.5 * x)
y2 = sigmoid(x)
y3 = sigmoid(2 * x)
print("y1 >>>", y1, "y2 >>>", y2, "y3 >>>", y3)

plt.plot(x, y1, 'r', linestyle='--') # w = 0.5
plt.plot(x, y2, 'g') # w = 1
plt.plot(x, y3, 'b', linestyle='--') # w = 2
plt.plot([0,0], [1.0,0.0], ':') # 가운데 점선 추가
plt.title('Sigmoid Function')
plt.show()