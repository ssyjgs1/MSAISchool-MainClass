# 텍스트 토큰화
from nltk.tokenize import sent_tokenize
from nltk.tokenize import word_tokenize
import nltk # (!)pip install nltk

# 구두점 데이터 다운로드 합니다.
nltk.download('punkt')

# 텍스트 데이터를 생성합니다.
string_temp = "The science of today is the technology of tomorrow"

# 단어를 토큰으로 나눕니다.
token_temp = word_tokenize(string_temp)
print(token_temp)

string_temp01 = "The science of today is the technology of tomorrow. The daughter of the Admiral. Jaina Proudmoore!"
sent_data = sent_tokenize(string_temp01)
print(sent_data)