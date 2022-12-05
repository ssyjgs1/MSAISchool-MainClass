# 시간대 데이터 처리1
import pandas as pd

data = pd.Timestamp('2022-12-05 01:40:10') # dataitem을 만들자
data_in_london = data.tz_localize(tz='Europe/London')
print(data_in_london)

data_in_london.tz_convert('Africa/Abidjan')
dates = pd.Series(pd.date_range('2/2/2022', periods=3, freq='M'))
temp = dates.dt.tz_localize('Africa/Abidjan')

print(temp)

# 시간대 데이터 처리2
from pytz import all_timezones
from pytz import timezone

print(all_timezones[0:2])
temp = dates.dt.tz_localize('dateutil/Asia/Seoul')
tz = timezone('Asia/Seoul')

temp01 = dates.dt.tz_localize(tz)
print(temp01)