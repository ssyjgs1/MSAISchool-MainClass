# image pretreatment
## 한라봉 : dekopon
## 자몽 : grapefruit
## 레드향 : kanpei
## 오렌지 : orange

# 폴더 구성 --> /dataset/image/각 폴더명 생성/리사이즈 된 각 이미지(400, 400)
import os
import glob
import argparse
from PIL import Image


def parse_opt() :
    parser = argparse.ArgumentParser()
    parser.add_argument("--image-folder-path", type=str, default="./image")
    opt = parser.parse_args()
    return opt


def image_file_check(opt) :
    image_path = opt.image_folder_path
    print(image_path)
    # 각 폴더별 데이터 양 체크
    # 전체 데이터
    all_data = glob.glob(os.path.join(image_path, "*", "*.jpg"))
    print("전체 데이터 갯수 : ", len(all_data))
    # 오렌지
    orange_data = glob.glob(os.path.join(image_path, "orange", "*.jpg"))
    print("오렌지 데이터 갯수 >> ", len(orange_data))
    # 자몽
    grapefruit_data = glob.glob(os.path.join(image_path, "grapefruit", "*.jpg"))
    print("자몽 데이터 갯수 >> ", len(grapefruit_data))
    # 레드향
    kanpei_data = glob.glob(os.path.join(image_path, "kanpei", "*.jpg"))
    print("레드향 데이터 갯수 >> ", len(kanpei_data))
    # 한라봉
    dekopon_data = glob.glob(os.path.join(image_path, "dekopon", "*.jpg"))
    print("한라봉 데이터 갯수 >> ", len(dekopon_data))
    return dekopon_data, orange_data, grapefruit_data, kanpei_data


def expand2square(img, background_color) :
    width_temp, height_temp  = img.size
    if width_temp == height_temp :
        return img
    elif width_temp > height_temp :
        result = Image.new(img.mode, (width_temp, width_temp), background_color)
        result.paste(img, (0, (width_temp - height_temp) // 2))
        return result
    else :
        result = Image.new(img.mode, (height_temp, height_temp), background_color)
        result.paste(img, ((height_temp - width_temp) // 2, 0))
        return result


def image_processing(dekopon_data, orange_data, grapefruit_data, kanpei_data) :
    orange = orange_data
    grapefruit = grapefruit_data
    kanpei = kanpei_data
    dekopon = dekopon_data
    # 이미지 읽고 가로,  세로 얻기 --> expand2square()에 던지기
    for i in orange :
        # print(i) # 오렌지의 경로
        file_name = i.split('\\')
        file_name_temp = file_name
        file_name = file_name[2]
        file_name = file_name.replace('.jpg','.png')
        # print(file_name)
        orange_img = Image.open(i)
        # print(orange_img)
        orange_img_resize = expand2square(orange_img, (0,0,0)).resize((400, 400))
        os.makedirs("./dataset/image/orange", exist_ok=True)
        orange_img_resize.save(f"./dataset/image/orange/orange_{file_name}")


    for i in grapefruit :
        file_name = i.split('\\')
        file_name_temp = file_name
        file_name = file_name[2]
        file_name = file_name.replace('.jpg','.png')
        grapefruit_img = Image.open(i)
        # print(orane_img)
        grapefruit_img_resize = expand2square(grapefruit_img, (0,0,0)).resize((400, 400))
        os.makedirs("./dataset/image/grapefruit", exist_ok=True)
        grapefruit_img_resize.save(f"./dataset/image/grapefruit/grapefruit_{file_name}")


    for i in kanpei :
        file_name = i.split('\\')
        file_name_temp = file_name
        file_name = file_name[2]
        file_name = file_name.replace('.jpg','.png')
        # print(file_name)
        kanpei_img = Image.open(i)
        kanpei_img_resize = expand2square(kanpei_img, (0,0,0)).resize((400, 400))
        os.makedirs("./dataset/image/kanpei", exist_ok=True)
        kanpei_img_resize.save(f"./dataset/image/kanpei/kanpei_{file_name}")


    for i in dekopon :
        file_name = i.split('\\')
        file_name_temp = file_name
        file_name = file_name[2]
        file_name = file_name.replace('.jpg','.png')
        # print(file_name)
        dekopon_img = Image.open(i)
        dekopon_img_resize = expand2square(dekopon_img, (0,0,0)).resize((400, 400))
        os.makedirs("./dataset/image/dekopon", exist_ok=True)
        dekopon_img_resize.save(f"./dataset/image/dekopon/dekopon_{file_name}")


if __name__ == '__main__':
    opt = parse_opt()
    dekopon_data, orange_data, grapefruit_data, kanpei_data = image_file_check(opt)
    image_processing(dekopon_data, orange_data, grapefruit_data, kanpei_data)