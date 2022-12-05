# 시차 특성
import pandas as pd

dataframe = pd.DataFrame()

# 날짜를 만들어보자
dataframe['dates'] = pd.date_range('1/1/2001',periods=5,freq='D')
dataframe['stock_price'] = [1.1, 2.2, 3.3, 4.4, 5.5]

# 한 행 뒤의 값을 가져오자
dataframe['previous_days_stock_price'] = dataframe['stock_price'].shift(1)
print(dataframe)