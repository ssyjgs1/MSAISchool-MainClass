# image data get --> train 80%, valid 10%, test 10%
import os
import glob
import natsort # pip install natsort
from sklearn.model_selection import train_test_split
import cv2

# image -> cats get
# image -> dogs get

cat_image_path = "./image/cats/"
dog_image_path = "./image/dogs/"

# cat_0324

cat_image_full_path = natsort.natsorted(glob.glob(os.path.join(f"{cat_image_path}/*.jpg")))
# print(cat_image_full_path)
# print("고양이 사진 갯수 >>>", len(cat_image_full_path))

dog_image_full_path = natsort.natsorted(glob.glob(os.path.join(f"{dog_image_path}/*.jpg")))
print(dog_image_full_path)
print("개 사진 갯수 >>>", len(dog_image_full_path)) # 5장 중복

# train 80, val 20 --> val 10, test 10
cat_train_data, cat_val_data = train_test_split(cat_image_full_path, test_size=0.2, random_state=7777)
cat_val, cat_test = train_test_split(cat_val_data, test_size=0.5, random_state=7777)
dog_train_data, dog_val_data = train_test_split(dog_image_full_path, test_size=0.2, random_state=7777)
dog_val, dog_test = train_test_split(dog_val_data, test_size=0.5, random_state=7777)
# print(f"cat train data : {len(cat_train_data)}, cat val data : {len(cat_val)}, cat test data : {len(cat_test)}")
# print(f"dog train data : {len(dog_train_data)}, dog val data : {len(dog_val)}, dog test data : {len(dog_test)}")

# image cv2 imread -> 저장하는 방법
# mv, copy

# dog image data save
for dog_train_path in dog_train_data :
    dog_train_img = cv2.imread(dog_train_path)
    dog_train_file_name = os.path.basename(dog_train_path)
    os.makedirs("./dataset/train/dog/", exist_ok=True)
    cv2.imwrite(f"./dataset/train/dog/{dog_train_file_name}", dog_train_img)

for dog_val_path, dog_test_path in zip(dog_val, dog_test) :
    dog_val_img = cv2.imread(dog_val_path)
    dog_test_img = cv2.imread(dog_test_path)
    dog_val_name = os.path.basename(dog_val_path)
    dog_test_name = os.path.basename(dog_test_path)
    os.makedirs("./dataset/val/dog/", exist_ok=True)
    os.makedirs("./dataset/test/dog/", exist_ok=True)
    cv2.imwrite(f"./dataset/val/dog/{dog_val_name}", dog_val_img)
    cv2.imwrite(f"./dataset/test/dog/{dog_test_name}", dog_test_img)
    
# cat image data save
flog = False
if flog == True : 
    for cat_train_data_path in cat_train_data :
        # print(cat_train_data_path)
        img = cv2.imread(cat_train_data_path)
        os.makedirs("./dataset/train/cat/", exist_ok=True)
        file_name = os.path.basename(cat_train_data_path)
        # print(file_name)
        cv2.imwrite(f"./dataset/train/cat/{file_name}", img)

    for cat_val_path, cat_test_path in zip(cat_val, cat_test) :
        img_val = cv2.imread(cat_val_path)
        img_test = cv2.imread(cat_test_path)
        file_name_val = os.path.basename(cat_val_path)
        file_name_test = os.path.basename(cat_test_path)
        # print(file_name_val, file_name_test)
        os.makedirs("./dataset/val/cat/", exist_ok=True)
        os.makedirs("./dataset/test/cat/", exist_ok=True)
        cv2.imwrite(f"./dataset/val/cat/{file_name_val}", img_val)
        cv2.imwrite(f"./dataset/test/cat/{file_name_test}", img_test)