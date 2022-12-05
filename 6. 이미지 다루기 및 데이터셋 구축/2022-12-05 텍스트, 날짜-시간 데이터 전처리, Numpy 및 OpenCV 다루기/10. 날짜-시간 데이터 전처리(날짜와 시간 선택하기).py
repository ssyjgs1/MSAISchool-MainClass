import pandas as pd

dataframe = pd.DataFrame()

# datetime 생성
# periods 매개변수는 date_range 함수에 전달된 시작 날짜와 종료 날짜 사이를 periods 매개변수에 전달된 기간만큼 동일하게 나누어 출력해준다
dataframe['date'] = pd.date_range('1/1/2022', periods=100000, freq='H')

# 두 datetime 사이의 샘플을 선택해보자
dataframe[(dataframe['date'] > '2022-1-1 01:00:00') & (dataframe['date'] <= '2022-1-1 04:00:00')]
dataframe = dataframe.set_index(dataframe['date']) # set_index로 index를 column 명으로 함(?)

temp = dataframe.loc['2022-1-1 01:00:00' : '2022-1-1 04:00:00']
print(temp)
"""
2022-01-01 01:00:00 2022-01-01 01:00:00
2022-01-01 02:00:00 2022-01-01 02:00:00
2022-01-01 03:00:00 2022-01-01 03:00:00
2022-01-01 04:00:00 2022-01-01 04:00:00
"""