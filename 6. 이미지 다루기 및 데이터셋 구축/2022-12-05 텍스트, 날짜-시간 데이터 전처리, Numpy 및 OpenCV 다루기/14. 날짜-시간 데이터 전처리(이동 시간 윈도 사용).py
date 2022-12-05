# 이동 시간 윈도 사용
import pandas as pd

# datetime을 만들자
time_index = pd.date_range('01/01/2010', periods=5,  freq="M")

# 데이터프레임을 만들고 인덱스를 설정하자
dataframe = pd.DataFrame(index=time_index)
dataframe['Stock_Price'] = [1,2,3,4,5] # 특성을 만든다
dataframe.rolling(window=2).mean() # 이동 평균을 계산한다
dataframe.ewm(alpha=0.5).mean()
print(dataframe)