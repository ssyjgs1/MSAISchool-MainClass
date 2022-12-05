# 품사 태깅
# NNP : 고유 명사, 단수 | NN : 명사, 단수 또는 불가산 명사 | RB : 부사 | VBD : 동사, 과거형
# VBG : 동사, 동명사 또는 현재분사 | JJ : 형용사 | PRP : 인칭대명사
import nltk
from nltk import pos_tag
from nltk import word_tokenize

# 태거를 다운로드 해보자
nltk.download('averaged_perceptron_tagger')

# 샘플 텍스트 데이터를 작성해보자
text_data = 'Arthas Menethil loved killing his farmers.'

# 사전 훈련된 품사 태깅을 사용해보자
text_tagged = pos_tag(word_tokenize(text_data))
print("단어, 품사 >>>", text_tagged)