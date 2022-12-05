# 불용어 삭제
from nltk.corpus import stopwords
import nltk # 패키지, 라이브러리 등을 불러온 후 실행해서 해당 단계에서 오류가 있는지 확인해봅시다.

# 불용어 데이터를 다운로드 → 179개의 불용어 데이터 제공
nltk.download('stopwords')

# 단어 토큰을 만듭니다.
tokenized_words = ['i','am','overwatch','wow','starcraft','warcraft','civilization','jurassic','park','of','to','go']

# 불용어 불러오기
stop_words = stopwords.words('english')
print("불용어 목록 >>>", stop_words)
print("불용어 목록 갯수(길이) >>>", len(stop_words)) # len(ㅁㅁ)함수로 리스트 내 갯수 파악

# 불용어 삭제
for word in tokenized_words:
    if word not in stop_words:
        print("살아남은 애들 >>>", word)
# [word for word in tokenized_words if word not in stop_words]
stop_data = stop_words # 불용어 확인
print("불용어 확인 >>", stop_data)