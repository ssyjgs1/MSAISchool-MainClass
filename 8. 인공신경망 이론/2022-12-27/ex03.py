# b값이 변함에 따라 좌우 이동으로 변화하는 그래프 시각화
import numpy as np
import matplotlib.pyplot as plt


def sigmoid(t) :
    return 1/(1+np.exp(-t))


x = np.arange(-5.0, 5.0, 0.1)
print(x)
y1 = sigmoid(0.5 + x)
y2 = sigmoid(1 + x)
y3 = sigmoid(1.5 + x)

plt.plot(x, y1, 'r', linestyle='--') # b = 0.5
plt.plot(x, y2, 'g') # b = 1
plt.plot(x, y3, 'b', linestyle='--') # b = 1.5
plt.plot([0,0], [1.0,0.0], ':') # 가운데 점선 추가
plt.title('Sigmoid Function')
plt.show()

# 양상(존재 여부) 범주
# 0(음성) if p < 0.5
# 1(양성) if p >= 0.5
# 결론적으로는 t>=0이면 sigma(t)>=0.5이므로(반대는 반대로)
# sigmoid 공식과 함께 생각하면 0 ^ T * x가 양수일 때 1(양성 범주), 음수일 때 0(음성 범주)이라고 예측한다.