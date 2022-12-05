# 어간 추출
from nltk.stem.porter import PorterStemmer
import nltk

# 단어 토큰을 만들어보자
tokenized_words = ['i','am','humbled','by','this','traditional','meeting','browser','searching']

# 어간 추출기를 만들어보자
porter = PorterStemmer()

word_list = [] # 어간 추출한 단어를 넣을 빈 공간을 생성한다

# 어간 추출기를 적용해보자
for word in tokenized_words:
    word_list.append(porter.stem(word))
print(word_list)