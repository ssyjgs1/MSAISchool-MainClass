from torch.utils.data import Dataset
from xml.etree.ElementTree import parse


def box_xyxy(image_metas) :
    list_box = []
    for img_meta in image_metas :
        box_metas = img_meta.findall("box")
        # print(box_metas)
        for box_meta in box_metas :
            box_label = box_meta.attrib['label']
            # print(box_label)
            box = [int(float(box_meta.attrib['xtl'])), int(float(box_meta.attrib['ytl'])),int(float(box_meta.attrib['xbr'])), int(float(box_meta.attrib['ybr']))]
            list_box.append(box)
        return list_box


class CustomDataset(Dataset) :
    def __init__(self, dataset_path, xml_path) :
        # 이 구간에선 초기화할 거나 path 지정할 것들만 두는 것을 권장
        self.dataset_path = dataset_path # 이미지 데이터 받는 용
        self.xml_path = xml_path


    def __getitem__(self, index) :
        image_path = self.dataset_path[index]
        xml_path = self.xml_path[index]
        # print(xml_path)
        tree = parse(xml_path) # xml 읽을 준비 구간
        root = tree.getroot()
        image_metas = root.findall('image')
        
        box = box_xyxy(image_metas)
        print(box)

        # 추가 augmentation - 밝기 조절 및 그림자 추가 등
        # ex
        # image = br_s(ㅁㅁ)

        # augmentation


        print(image_path)

        return image,box, label


    def __len__(self) :
        return len(self.dataset_path)


image_path = ["./01.jpg"]
xml_path = ["homework review\annotations.xml"]
test = CustomDataset(image_path, xml_path)

for i in test :
    pass