# 구두점 삭제
# 구두점 글자의 딕셔너리를 만들어 translate() 적용
import unicodedata
import sys

# 구두점이 포함된 텍스트 데이터 생성
text_data = ["HO!!!!!!!!! I... Love You.. Tjie. song...!!!","1214124124124%%%% aGReeenNN #?!! serious?@@! #AA","Reight@@!!"]

punctuation = dict.fromkeys(i for i in range(sys.maxunicode)
                            if unicodedata.category(chr(i)).startswith('P'))

test = [string.translate(punctuation) for string in text_data]
print("punctuation 범위에 속하는 구두점 제거 결과 >>",test)