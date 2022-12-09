import os
from collections import defaultdict
import random

random.seed(0)

label_dict = defaultdict(int)

data_cnt_list = []
datapath = 'data\animal'
for idx, v in enumerate(os.listdir(datapath)) :
    label_dir = os.path.join(datapath, v)
    label_dict[v] = idx
    if os.path.isdir(v) :
        data_cnt_list.append(len(os.listdir(v)))

test_data_cnt = int(sum(data_cnt_list) / len(data_cnt_list)*0.2)
train_df_list = defaultdict(list)
test_df_list = defaultdict(list)

for i in os.listdir('.'):
    label_path = os.path.join(datapath, i)
    if os.path.isdir(label_path):
    total_data = os.listdir(i)
    test_data = random.sample(total_data, test_data_cnt)
    train_data = [os.path.join(i,j) for j in total_data if j not in test_data]    
    train_df_list['file_name'] = train_data
    test_df_list['file_name'] = [os.path.join(i,t) for t in test_data]
    train_df_list['label'] = [label_dict[i] for _ in range(len(train_data))]
    test_df_list['label'] = [label_dict[i] for _ in range(len(test_data))]

import pandas as pd
tr_df = pd.DataFrame(train_df_list)
te_df = pd.DataFrame(test_df_list)
print(tr_df.head())
print(te_df.head())
print(tr_df['lagel'])