# 난수의 재연(실행마다 결과는 동일)
# 랜덤한 값이 실행할 때마다 변경됨
import numpy as np

print('시드를 안 걸었을 때 >>> \n', np.random.randint(0,10,(2,3)))

# 변경이 안 되도록 고정하는 방법 : seed(주고 싶은 숫자)
np.random.seed(323)
print('시드를 걸었을 때 >>> \n', np.random.randint(0,10,(2,3)))