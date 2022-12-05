# numpy 배열 객체 복사
import numpy as np

array1 = np.arange(0, 10)
array2 = array1
array2[0] = 99
print(array1)
print('copy를 쓰지 않았을 때의 array2는 >>>', array2)

array1 = np.arange(0, 10)
array2 = array1.copy()
array2[0] = 99
print(array1)
print('copy를 써서 원하는 대로 변경된 array2는 >>>', array2)

# numpy 중복된 원소 제거
array = np.array([1,2,1,2,3,4,3,4,5])
print('중복된 원소 제거 처리 전 >>>', array)
print('중복된 원소 제거 처리 후 >>>', np.unique(array))

# np.isin() --> 내가 찾는 게 있는지 여부 알려줌. 각 index 위치에 true false 표기해줌
array = np.array([1,2,3,4,5,6,8])
iwantit = np.array([1,2,3,10])
print(np.isin(array, iwantit))