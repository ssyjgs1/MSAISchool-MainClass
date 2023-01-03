import glob
import os
from sklearn.model_selection import train_test_split

data_dir = "./dataset"
name_list = os.listdir(data_dir)

img_path_acacia = "./dataset/acacia"
img_acacia = glob.glob(os.path.join(img_path_acacia, "*.JPG"))
# print(img_acacia)

def load_image_folder(name) :
    img_path = f"./dataset/{name}"
    img = glob.glob(os.path.join(img_path, "*.JPG"))
    print(img, len(img))

for i in name_list :
    img_list = load_image_folder(i)
    train_list_i, val_list = train_test_split(img_list, test_size=0.2, random_state=323, shuffle=True)
    print(f"{i}_train_list, {i}_val_list")