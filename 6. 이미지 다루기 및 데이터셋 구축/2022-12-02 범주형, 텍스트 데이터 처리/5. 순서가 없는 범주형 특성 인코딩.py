# 순서가 없는 범주형 특성 인코딩
# sklearn의 LabelBinarizer을 사용하여 문자열 타겟 데이터를 one-hot 인코딩
# 하나의 값으로 처리 된 모습

import numpy as np
from sklearn.preprocessing import OneHotEncoder
from sklearn.preprocessing import LabelBinarizer

feature = np.array([["Texas"],
                    ["California"],
                    ["Texas"],
                    ["Delaware"],
                    ["Texas"]])
print(feature) # 특성 데이터 생성, 출력

one_hot = LabelBinarizer() # 원-핫 인코더 생성
one_hot.fit_transform(feature) # 특성을 원-핫 인코딩 변환
print(one_hot.classes_) # ['California' 'Delaware' 'Texas'], 중복은 날라감
one_hot_data = one_hot.inverse_transform(one_hot.transform(feature))
# ['Texas' 'California' 'Texas' 'Delaware' 'Texas']
print("one_hot >> ", one_hot_data)