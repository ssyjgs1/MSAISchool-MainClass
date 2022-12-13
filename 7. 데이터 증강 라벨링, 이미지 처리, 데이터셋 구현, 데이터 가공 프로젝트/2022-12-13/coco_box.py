"""COCO에 맞게끔 설계되어 있는 코드"""
import os
import json
import cv2


# json path
json_path = "./annotations/instances_default_box.json"


# json 파일 읽기
with open(json_path, "r") as f :
    coco_info = json.load(f)

# print(coco_info)

assert len(coco_info) > 0, "파일 읽기 실패"


# category 정보 수집
categories = dict()
for category in coco_info["categories"] :
    # print(category)
    categories[category['id']] = category['name']

# print("categories info >>> ", categories)


# annotation 정보 수집
anno_info = dict()
for annotation in coco_info['annotations'] :
    # print(annotation)
    image_id = annotation['image_id']
    bbox = annotation['bbox']
    category_id = annotation['category_id']
    # print(f"image_id : {image_id}, category_id, : {category_id}, bbox : {bbox}")

    if image_id not in anno_info :
        anno_info[image_id] = {
            "boxes" : [bbox],
            "categories" : [category_id]
        }
    else :
        anno_info[image_id]["boxes"].append(bbox)
        anno_info[category_id]["categories"].append(categories[category_id])

# print("anno_info >>> ", anno_info)

for image_info in coco_info['images'] :
    # print(image_info)
    filename = image_info['file_name']
    width = image_info['width']
    height = image_info['height']
    img_id = image_info['id']
    # print(filename, width, height, img_id)
    
    # 이미지 가져오기 위한 처리
    file_path = os.path.join('./images', filename)
    # print('file_path = ', file_path)
    img = cv2.imread(file_path)
    # cv2.imshow('show', img)
    # cv2.waitKey(0)
    
    try :
        annotation = anno_info[img_id]
    except KeyError :
        continue

    # print(annotation)

    ## box category
    for bbox, category in zip(annotation['boxes'], annotation['categories']) :
        # print(bbox, category)
        x1, y1, w, h = bbox
        # print(x1, y1, w, h)

        rec_img = cv2.rectangle(img, (int(x1), int(y1)), (int(x1+w), int(y1+h)), (225,0,255), thickness=2)
    
    cv2.imshow('test', rec_img)
    cv2.waitKey(0)