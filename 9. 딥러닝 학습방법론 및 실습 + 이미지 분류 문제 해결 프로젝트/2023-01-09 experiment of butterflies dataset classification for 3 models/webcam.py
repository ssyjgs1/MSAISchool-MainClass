import cv2
from torchvision import models
from torchvision import transforms
import torch.nn as nn
import torch


device = torch.device("cuda" if torch.cuda.is_available() else "cpu")


webcam = cv2.VideoCapture(0)
webcam.set(cv2.CAP_PROP_FRAME_WIDTH, 640) # 가로
webcam.set(cv2.CAP_PROP_FRAME_HEIGHT, 480) # 세로


"""model 호출"""
net = models.resnet18(pretrained=True)
# print(net) # model architecture 확인
# net.fc = nn.Linear(in_features=512, out_features="클래스 갯수") # 수정해서 사용할 때는 이렇게 쓰면 됨


"""학습한 모델 불러오기"""
# 이 폴더에는 기 학습된 모델이 없으므로 내용 파악을 위해 빈 resnet.pt를 입력만 해두었음
# 실제로 학습한 모델을 갖다 쓸라믄 위의 model 호출을 한 후 architecture를 수정해주면 됨
# models_loader_path = "./weight/resnet.pt"
# net.load_state_dict(torch.load(models_loader_path, map_location=device))
net.to(device)


val_transforms = transforms.Compose([
    transforms.Resize((224)),
    transforms.ToTensor(),
    transforms.Normalize([0.485, 0.456, 0.406], [0.229,0.224,0.225])
])


def preprocess(image, device) :
    from PIL import Image
    image = Image.fromarray(image)
    image = val_transforms(image) # transform 먹이기
    image = image.float()
    image = image.to(device)
    image = image.unsqueeze(0) # 차원 변경
    # print(image.size())
    return image


if not webcam.isOpened() :
    print("카메라 열기 실패!")
    exit()


while webcam.isOpened() :
    status, frame = webcam.read()
    frame = cv2.flip(frame, 1) # 좌우 대칭
    net.eval()
    with torch.no_grad() : 
        if status :
            image = preprocess(frame, device=device)
            output = net(image)
            _, argmax = torch.max(output, dim=1)

            print("output", argmax)
            cv2.imshow("test", frame)

        if cv2.waitKey(1) & 0xFF == ord('q') :
            break


webcam.release()
cv2.destroyAllWindows()