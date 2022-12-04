# 텍스트 데이터 처리 1
import re
text_data = ["   Interrobang. By Aishwarya Henriette   ", "  Parking and going. By Kear Gua  ", " Today Is the night. By Jar par  "]

# 공백 없애는 반복문
strip_whitespace = [string.strip() for string in text_data]
print("공백 제거 >>", strip_whitespace)

# 마침표 제거
remove_periods = [string.replace(".", "") for string in strip_whitespace]
print("마침표 제거 >>", remove_periods)

# 대문자로 변환해주는 함수(upper)
def capitalizer(string:str) -> str : return string.upper()

temp = [capitalizer(string) for string in remove_periods]
print("대문자로 변환 >>", temp)

# X로 문자 변환해주는 함수
def replace_letter_with_X(string:str) -> str :
    return re.sub(r"[a-zA-Z]","X", string)

data = [replace_letter_with_X(string) for string in remove_periods]
print("X로 모두 변환 >>", data)