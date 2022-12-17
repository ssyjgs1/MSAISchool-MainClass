"""
xml 정보로 custom dataset을 만들어서 --> 이 스크립트가 돌아가면 됨
return 할 때 이미지, 박스 정보, 카테고리 id 정보를 넘겨서 받아가지고 함수에 넣어서 돌아가게끔
"""
import random
import cv2
import albumentations as A
import json
from torch.utils.data.dataset import Dataset
import os
import glob
from PIL import Image

json_path = "./homework/instances_default.json"
categories = dict()
anno_info = dict()

with open(json_path, "r") as f :
    coco_info = json.load(f)
# # print("json 파일 정보 >>>", coco_info)
# coco_anno2 = coco_info['categories']
# # [{'id': 1, 'name': 'cat', 'supercategory': ''}, {'id': 2, 'name': 'dog', 'supercategory': ''}]
# coco_anno2sub = coco_anno2[0]
# # {'id': 1, 'name': 'cat', 'supercategory': ''}
# coco_anno2sub_sub = coco_anno2sub['id']
# # 1

class mycustomdataset(Dataset) :
    def __init__(self, file_path) :
        self.file_path = file_path
        with open(self.file_path, "r") as f :
            coco_info = json.load(f)
        # print("json 파일 정보 >>>", coco_info)
        
        for category in coco_info["categories"] :
            categories[category['id']] = category['name']            

        for annotation in coco_info['annotations'] :
            image_id = annotation['image_id']
            category_id = annotation['category_id']
            bbox = annotation['bbox']
            anno_info['id'] = annotation['id']
            anno_info['image_id'] = image_id
            anno_info['category_id'] = category_id
            anno_info['bbox'] = bbox
            print(anno_info['id'],anno_info['image_id'],anno_info['category_id'],anno_info['bbox'] )

            if image_id not in anno_info :
                anno_info.setdefault('image_id', annotation['image_id'])
                anno_info.setdefault('bbox', annotation['bbox'])
                anno_info.setdefault("category_id", annotation['category_id'])
            # else :
            #     anno_info['bbox'].append(annotation['bbox'])
            #     anno_info['category_id'].append(categories[anno_info['category_id']])
    
    def __getitem__(self, index) :
        return categories, anno_info
 
    def __len__(self) :
        return(len(self.file_path))
    
mycustomdataset(json_path)
print("categories >>>", categories)
print("anno_info >>>", anno_info)

"""-----------------------------------------------------------------------------------------------------"""

BOX_COLOR = (255,0,0) # red color
TEXT_COLOR = (255,255,255) # white color

### visualize a single bounding box on the image
def visualize_bbox(image, bboxes, category_ids, category_id_to_name, color=BOX_COLOR, thickness=2) :
    img = image.copy()
    for bbox, category_id in zip(bboxes, category_ids) :
        class_name = category_id_to_name[category_id]
        print('class_name >>> ', class_name)
        x_min, y_min, w, h = bbox
        x_min, x_max, y_min, y_max = int(x_min), int(x_min + w), int(y_min), int(y_min + h)

        cv2.rectangle(img, (x_min, y_min), (x_max, y_max), color=color, thickness=thickness)
        cv2.putText(img, text=class_name, org=(x_min, y_min+30), fontFace=cv2.FONT_HERSHEY_COMPLEX, fontScale=1, color=color, thickness=thickness)
    cv2.imshow("test", img)
    cv2.waitKey(0)
    
image = cv2.imread("./01.jpg")


# print("bboxes >>>", bboxes)
# print("category_ids >>>", category_ids)
# print("category_id_to_name >>>", category_id_to_name)


exit()

transform = A.Compose([
    A.RandomSizedBBoxSafeCrop(width=450, height=360, erosion_rate=0.2),
    A.HorizontalFlip(p=1),
    A.RandomRotate90(p=1),
    A.MultiplicativeNoise(multiplier=[0.5, 1.5], elementwise=True, p=1),
    A.MultiplicativeNoise(multiplier=0.5, p=1)
], bbox_params=A.BboxParams(format='coco', label_fields=['category_ids']))

transformed = transform(image=image, bboxes = bboxes, category_ids=category_ids)

visualize_bbox(transformed['image'], transformed['bboxes'], transformed['category_ids'], category_id_to_name, color=BOX_COLOR, thickness=2)