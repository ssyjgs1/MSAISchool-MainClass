import os
import json
import cv2

json_path = 'annotations/instances_default.json'
with open(json_path, "r") as f :
    coco_info = json.load(f)
# print(coco_info)


# 파일을 읽기 실패했을 때
assert len(coco_info) > 0, "파일 읽기 실패"


# category 정보
categories = dict()
for category in coco_info['categories'] :
    categories[category["id"]] = category["name"]
# print(categories)


# annotation 정보
ann_info = dict()
for annotation in coco_info['annotations'] :
    image_id = annotation['image_id']
    bbox = annotation["bbox"]
    category_id = annotation["category_id"]
    segmentation = annotation["segmentation"]
    # print(image_id, category_id, bbox, segmentation)

    if image_id not in coco_info["images"] :
        ann_info[image_id] = {
            "boxes" : [bbox],
            "segmentation" : [segmentation],
            "categories" : [category_id] 
        }
    else :
        ann_info[image_id]["boxes"].append(bbox)
        ann_info[image_id]["segmentation"].append(segmentation)
        ann_info[image_id]["categories"].append(categories[category_id])

for image_info in coco_info["images"] :
    filename = image_info['file_name']
    width = image_info['width']
    height = image_info['height']
    img_id = image_info['id']

    file_path = os.path.join("./images", filename)
    img = cv2.imread(file_path)

    try :
        annotation = ann_info[img_id]
    except KeyError :
        continue

    for bbox, segmentation, category in zip(annotation['boxes'], annotation['segmentation'], annotation['categories']) :
        x1, y1, w, h = bbox
        for seg in segmentation :
            import numpy as np
            poly = np.array(seg, np.int32).reshape((int(len(seg)/2), 2))
            print(poly)