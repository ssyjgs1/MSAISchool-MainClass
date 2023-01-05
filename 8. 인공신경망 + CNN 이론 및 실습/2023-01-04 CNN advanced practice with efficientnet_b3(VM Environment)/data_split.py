import glob
import os
from torchvision import models
import cv2
import random
import shutil


"""이미지 데이터 갯수 확인 함수"""
def image_size(path) :
    # 각 폴더별 이미지 몇 장 있나 확인(folder image size)
    african_wildcat = glob.glob(os.path.join(path, "african-wildcat", "*.jpg"))
    blackfoot_cat = glob.glob(os.path.join(path, "blackfoot-cat", "*.jpg"))
    chinese_mountain_cat = glob.glob(os.path.join(path, "chinese-mountain-cat", "*.jpg"))
    domestic_cat = glob.glob(os.path.join(path, "domestic-cat", "*.jpg"))
    european_wildcat = glob.glob(os.path.join(path, "european-wildcat", "*.jpg"))
    jungle_cat = glob.glob(os.path.join(path, "jungle-cat", "*.jpg"))
    sand_cat = glob.glob(os.path.join(path, "sand-cat", "*.jpg"))

    for i in blackfoot_cat[:10] :
        img = cv2.imread(i)
        cv2.imshow("test", img)
        cv2.waitKey(0)

    # show print
    show_flg = False
    if show_flg == True:
        print("African Wildcat >>>", len(african_wildcat))
        print("Blackfoot Cat >>>", len(blackfoot_cat))
        print("Chinese Mountain Cat >>>", len(chinese_mountain_cat))
        print("Domestic Cat >>>", len(domestic_cat))
        print("European Wildcat >>>", len(european_wildcat))
        print("Jungle Cat >>>", len(jungle_cat))
        print("Sand Cat >>>", len(sand_cat))


def create_train_val_split_folder(path) :
    all_categories = os.listdir(path)
    print(all_categories)
    os.makedirs("./dataset/train/", exist_ok=True)
    os.makedirs("./dataset/val/", exist_ok=True)
    
    for category in sorted(all_categories) :
        os.makedirs(f"./dataset/train/{category}", exist_ok=True)
        all_image = os.listdir(f"./data/{category}/")
        for image in random.sample(all_image, int(0.9 * len(all_image))) :
            # shutil.move(origin dataset, new dataset)
            shutil.move(f"./data/{category}/{image}", f"./dataset/train/{category}/")
    for category in sorted(all_categories) :
        os.makedirs(f"./dataset/val/{category}", exist_ok=True)
        all_image = os.listdir(f"./data/{category}/")
        for image in all_image :
            shutil.move(f"./data/{category}/{image}", f"./dataset/val/{category}/")


# if __name__ == "__main__" :
#     path = "./data"
#     # image_size(path)
#     create_train_val_split_folder(path)