import numpy as np
import pandas as pd

data_strings = np.array(['12-05-2022 13:28 PM',
                        '12-06-2022 16:18 PM',
                        '12-07-2022 09:12 AM'])

# Timestamp
for data in data_strings :
    data = pd.to_datetime(data, format='%d-%m-%Y %I:%M %p', errors="ignore")
    print(data)

for data in data_strings :
    data = pd.to_datetime(data, format='%d-%m %I:%M %p', errors="ignore")
    print(data)