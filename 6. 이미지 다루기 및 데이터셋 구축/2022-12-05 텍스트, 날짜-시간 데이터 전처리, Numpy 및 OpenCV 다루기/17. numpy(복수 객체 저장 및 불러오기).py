# 복수 객체 저장 및 불러오기
import numpy as np

# 복수 객체 저장을 위한 데이터를 생성해보자
array1 = np.arange(0, 10)
array2 = np.arange(0, 20)
print('생성한 것은 >>>', array1, array2)

# 저장해보자
np.savez('./save.npz', array1=array1, array2=array2)

# 객체를 불러와보자
data = np.load('./save.npz')
result1 = data['array1']
result2 = data['array2']

print('result1은 >>>', result1)
print('result2은 >>>', result2)