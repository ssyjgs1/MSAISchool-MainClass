from PIL import Image
import os

def expand2square(pil_img, background_color) :
    width, height = pil_img.size
    if width == height :
        return pil_img
    elif width > height :
        result = Image.new(pil_img.mode, (width, width), background_color)
        result.paste(pil_img, (0, (width - height) // 2))
        return result
    else :
        result = Image.new(pil_img.mode, (height, height), background_color)
        result.paste(pil_img, ((height - width) // 2, 0 ))
        return result

def image_file(image_folder_path) :
    all_root = []
    for (path, dir, files)  in os.walk(image_folder_path) :
        for filename in files :
            # image.png --> (splitext(ㅁㅁㅁㅁ)[-1]) --> .png
            ext = os.path.splitext(filename)[-1]
            # print(ext)
            # print(filename)
            if ext == ".jpg" :
                root = os.path.join(path, filename)
                # ./cvat_annotations/annotations.xml | root 안에 저장될 내용
                all_root.append(root)
            else :
                print("no image file...")
                continue
    return all_root

path_list_apple = image_file("./pre-practice/apple/")
path_list_kiwi = image_file("./pre-practice/kiwi/")
path_list_pear = image_file("./pre-practice/pear/")
# print(path_list_apple, path_list_kiwi, path_list_pear)

target_path_list = [path_list_apple, path_list_kiwi, path_list_pear]
for img_path_list in target_path_list :
    for img_path in img_path_list :
        # print(img_path)
        # image_name_temp = img_path.split("/")
        image_name_temp = os.path.basename(img_path)
        # image_name_temp2 = os.path.abspath(img_path) # abspath : 절대 경로 뽑아줌
        # print(image_name_temp2)
        image_name = image_name_temp.replace(".jpg", "")
        # print(image_name_temp)

        img = Image.open(img_path)
        print('이미지가 열렸습니다.')
        img_new = expand2square(img,(0,0,0)).resize((400,400))
        print('이미지가 리사이즈 되었습니다.')
        fruit = ['apple', 'kiwi', 'pear']
        if 'apple' in image_name :
            os.makedirs(f"./pre-practice/resize/apple", exist_ok=True)
            img_new.save(f"./pre-practice/resize/apple/{image_name}.png", quality=100)
            print('이미지가 저장되었습니다.')
        elif 'kiwi' in image_name :
            os.makedirs(f"./pre-practice/resize/kiwi", exist_ok=True)
            img_new.save(f"./pre-practice/resize/kiwi/{image_name}.png", quality=100)
            print('이미지가 저장되었습니다.')
        elif 'pear' in image_name :
            os.makedirs(f"./pre-practice/resize/pear", exist_ok=True)
            img_new.save(f"./pre-practice/resize/pear/{image_name}.png", quality=100)
            print('이미지가 저장되었습니다.')

print('작업이 끝났습니다. 결과를 확인해주세요.')
open_path = os.path.realpath('./pre-practice/resize')
os.startfile(open_path)