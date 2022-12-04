# 순서가 있는 범주형 특성 인코딩
import pandas as pd

data = {"Score":["Low", "Low","Medium", "Medium", "High", "Barely More Than Medium"]} # 특성 데이터 생성

dataframe = pd.DataFrame(data)

# 매핑 딕셔너리 생성
scale_mapper = {"Low":1, "Medium":2, "Barely More Than Medium":3, "High":4} 
dataframe["Score"].replace(scale_mapper) # 특성을 정수로 변환
print(dataframe)