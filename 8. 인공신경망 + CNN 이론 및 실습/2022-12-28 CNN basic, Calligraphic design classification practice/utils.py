import os
import glob
from PIL import Image

IMG_FORMATS = [".jpg", ".png", ".jpeg", ".PNG", ".JPG", ".JPEG"]

# 이미지 리사이즈 정사각형 만들기
def expand2square(pil_image, background_color) :
    width, height = pil_image.size
    if width == height :
        return pil_image
    elif width > height :
        result = Image.new(pil_image.mode, (width, width), background_color)
        result.paste(pil_image, (0, (width - height) // 2))
        return result
    else :
        result = Image.new(pil_image.mode, (height, height), background_color)
        result.paste(pil_image, ((height - width) // 2, 0))
        return result


# 폴더에서 파일 검색하는 함수
def image_file(image_folder_path) :
    all_root = []
    for (path, dir, files) in os.walk(image_folder_path) :
        for filename in files : 
            ext = os.path.splitext(filename)[-1] # jpg, jpeg, png, PNG, JPG, JPEG....
            if ext in IMG_FORMATS :
                root = os.path.join(path, filename)
                # print(root)
                all_root.append(root)
            else :
                print("No image file...")
                continue
    return all_root

image_file("./dataset/train_image")
