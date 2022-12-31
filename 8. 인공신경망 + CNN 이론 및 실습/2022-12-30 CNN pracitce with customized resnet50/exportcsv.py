import pandas as pd
import os
import glob
# 폴더명 스캔해서 스플릿하고 집합 써서 중복 제거하고 for문으로 하나씩 넣어줬습니다


label_paths = glob.glob(os.path.join('./dataset/test', '*'))

i=0
for i in range(len(label_paths)) :
    label_path = label_paths[i].split('\\')[1]
    print(label_path)
    label_path_list = []
    label_path_list.append(label_path)
    i += 1

print(label_path_list)