# 단어 중요도에 가중치 부여하기
import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer

# 텍스트 데이터 만들어보자
text_data = np.array(['I love Terramore. Grand Terramore!','Arthure is best','Korea beats Germany.'])

# tf-idf 특성 행렬을 만들어보자
tfidf = TfidfVectorizer() # 특성 행렬 만들 함수 호출
feature_matrix =  tfidf.fit_transform(text_data)
feature_matrix.toarray() # tf-idf 특성 행렬을 밀집 배열로 확인
print(feature_matrix)

# 특성 이름을 확인해보자
tf = tfidf.vocabulary_
print("단어의 빈도수 확인 >>>", tf)