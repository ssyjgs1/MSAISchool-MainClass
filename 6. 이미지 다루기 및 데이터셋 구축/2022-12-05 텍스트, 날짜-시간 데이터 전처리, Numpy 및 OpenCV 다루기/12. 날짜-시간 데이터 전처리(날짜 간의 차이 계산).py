# 날짜 간의 차이 계산
import pandas as pd

dataframe = pd.DataFrame()
dataframe['이륙'] = [pd.Timestamp('01-01-2022'), pd.Timestamp('01-04-2022')]
dataframe['착륙'] = [pd.Timestamp('01-01-2022'), pd.Timestamp('01-06-2022')]

dataframe['착륙'] - dataframe['이륙']

data = pd.Series(delta.days for delta in dataframe['착륙'] - dataframe['이륙'])
print(data)