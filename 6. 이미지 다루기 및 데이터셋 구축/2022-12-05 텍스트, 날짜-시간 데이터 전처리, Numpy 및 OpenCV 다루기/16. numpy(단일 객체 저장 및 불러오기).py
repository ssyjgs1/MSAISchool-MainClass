# 단일 객체 저장 및 불러오기
import numpy as np

array = np.arange(0, 10)
print('만들어낸 단일 객체 >>>', array)

# .npy 파일에다가 저장해보자
np.save("./save.npy", array)

# 불러와보자
result = np.load('./save.npy')
print('불러온 내용은 >>>', result)