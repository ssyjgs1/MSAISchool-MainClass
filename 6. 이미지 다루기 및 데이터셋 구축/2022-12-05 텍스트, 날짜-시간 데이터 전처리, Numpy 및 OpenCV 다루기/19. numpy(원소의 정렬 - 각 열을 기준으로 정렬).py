# 원소의 정렬 - 각 열을 기준으로 정렬
import numpy as np
array = np.array([[5,9,10,2,4,20000],[8,3,2,4,5,15100]])
print('각 열을 기준으로 정렬 전에는 >>> \n', array)

array.sort(axis=0) # 열을 기준으로 정렬해라
print('각 열을 기준으로 정렬 후에는 >>> \n', array)