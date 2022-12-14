from torch.utils.data.dataset import Dataset
import pandas as pd

class kiwi_customdataset(Dataset) :
    
    def __init__(self, data_path) :
        self.all_path_data = pd.read_csv(data_path)
        # print(self.all_path_data)

    def __getitem__(self, index) :
        name = self.all_path_data.iloc[index,0]
        bbox = self.all_path_data.iloc[index,1]
        # print(name, bbox)
        return name, bbox

    def __len__(self) :
        return len(self.all_path_data)
        
test = kiwi_customdataset("./cvat_box.csv")

for i in test :
    print(i)
    pass