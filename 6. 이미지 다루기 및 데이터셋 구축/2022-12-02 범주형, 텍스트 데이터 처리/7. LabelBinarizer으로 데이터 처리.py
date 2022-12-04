# 순서가 없는 범주형 데이터 처리
# sklearn의 LabelBinarizer를 사용하여 문자열 타겟 데이터 원-핫 인코딩 진행
import numpy as np
from sklearn.preprocessing import OneHotEncoder

feature = np.array([["Texas", 1],["California",2],["Texas",3],["Delaware",1],["Texas", 1]])
print(feature)

one_hot_encoder = OneHotEncoder(sparse=False)
one_hot_encoder.fit_transform(feature)
one_hot_encoder_data = one_hot_encoder.categories_ # 클래스 확인
print(one_hot_encoder_data)

# 여러 개의 열이 있는 특성 배열 생성
print("one_hot_encoder_data >> ", one_hot_encoder_data)