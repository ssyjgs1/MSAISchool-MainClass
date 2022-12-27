# Sigmoid Function Visualize
import numpy as np
import matplotlib.pyplot as plt

# [-10 ~ 10] 구간에서 100개의 t값을 sigmoid function에 대입합니다.
t = np.linspace(-10, 10, 1000)
print(t)

# sigmoid 공식
sig = 1 / (1 + np.exp(-t)) # np.exp --> 함수 밑(base)이 자연상수 e인 지수함수로 변환해주는 기능

# t와 sigmoid의 결과값 그래프
plt.figure(figsize=(9,3))
plt.plot([-10,10], [0,0], "k-")
plt.plot([-10,10], [0.5,0.5], "k:") # y축 기준으로 0.5 실선 하나 생성
plt.plot([-10,10], [1,1], "k:") # y축 기준으로 1 실선 하나 생성
plt.plot([0,0], [-1.1,1.1], "k-") # center 기준으로 0.0  선 하나 생성
plt.plot(t, sig, "r-", linewidth=2, label=r"$\sigma(t) = \frac{1}{1+e^{-t}}$")
plt.xlabel("t")
plt.legend(loc="upper left", fontsize=20)
plt.axis([-10,10,-0.1, 1.1]) # 그래프 간격 조정
plt.show()