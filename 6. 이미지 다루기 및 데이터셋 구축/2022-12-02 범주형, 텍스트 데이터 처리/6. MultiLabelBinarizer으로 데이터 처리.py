# MultiLabelBinarizer
import numpy as np
from sklearn.preprocessing import OneHotEncoder
from sklearn.preprocessing import MultiLabelBinarizer

multiclass_feature = [("Texas","Florida"),
                        ("California","Alabama"),
                        ("Texas","Florida"),
                        ("Delaware","Florida"),
                        ("Texas","Florida")]
# print(multiclass_feature) # 특성 데이터 생성, 출력

one_hot_multiclass = MultiLabelBinarizer() # 다중 클래스 원-핫 인코더 객체 생성
one_hot_multiclass.fit_transform(multiclass_feature) # 다중 클래스 특성을 원-핫 인코딩 실행

one_hot_multiclass_classes = one_hot_multiclass.classes_

one_hot_data = one_hot_multiclass.inverse_transform(one_hot_multiclass.transform(multiclass_feature))

print("classes >> ", one_hot_multiclass_classes)
print("one_hot_data >>", one_hot_data)

"""[결과]
classes >>  ['Alabama' 'California' 'Delaware' 'Florida' 'Texas']
one_hot_data >> [('Florida', 'Texas'), ('Alabama', 'California'), ('Florida', 'Texas'), ('Delaware', 'Florida'), ('Florida', 'Texas')]
"""