# 날짜 데이터를 여러 특성으로 분할하기
import pandas as pd

dataframe = pd.DataFrame()
data = dataframe['date'] = pd.date_range('1/1/2022 09:45', periods=150, freq="w")
print(data)

# 년, 월, 일, 시, 분에 대한 특성을 만들어보자
dataframe['year'] = dataframe['date'].dt.year
dataframe['month'] = dataframe['date'].dt.month
dataframe['day'] = dataframe['date'].dt.day
dataframe['hour'] = dataframe['date'].dt.hour
dataframe['minute'] = dataframe['date'].dt.minute

# 상단 5개 행을 확인해보자
print(dataframe.head(5))