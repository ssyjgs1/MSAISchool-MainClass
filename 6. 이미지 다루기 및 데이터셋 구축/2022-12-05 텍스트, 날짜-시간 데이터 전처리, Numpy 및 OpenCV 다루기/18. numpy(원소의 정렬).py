# numpy 가장 많이 사용되는 함수
# 1. 원소의 정렬
import numpy as np

# def -> 오름차순 정렬 형태
array = np.array([15,20,5,12,7])
np.save("./array.npy", array)
array_data = np.load('./array.npy')
array_data.sort()
print('오름차순으로 정렬하면 >>>',array_data)

# 내림차순 정렬
# numpy.flip() 이런 방법도 있음
# reversed() 이런 방법도 있음. 근데 얘는 list 객체에서 쓰는 애 --> list(reversed(close))
print('내림차순으로 정렬하면 >>>', array_data[::-1])