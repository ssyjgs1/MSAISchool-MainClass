# Classification 할 때 할 일
1. 데이터 분포 확인

2. 데이터 나누기 작업(train : valid : test)=(8 : 1 : 1) # 학습 데이터가 충분한 경우
    - 데이터가 너무 적을 때는 (train : valid) = (9 : 1) # 학습 데이터가 부족한 경우
    - test 데이터를 별도로 수집할 필요 있음
    - 보통 데이터 갯수가 적다는 기준은 label별 1천장 미만일 경우를 말함
    - image 파일의 저장 포맷은 .PNG를 권장함
    - 서비스를 목적으로 한다면 최소한 각 label별 1만장 이상이 필요함
    - 데이터가 많다고 무조건 좋은 건 아님(ex. 다 비슷한 경우 - overfitting 가능성 커짐 --> 다양성 필요)

3. Custom Dataset 구축
    - PyTorch에서 제공하는 Dataset을 상속받아서 class 작성
    - __init__(self, path, transform)
        - 이미지 폴더에서 이미지 경로 가져오기(ex. list)
        - transform에 대해서 정의
    - __getitem__(self, item)
        - 이미지 경로가 담겨있는 list에 대해서 index로 추출해줌(ex. for문)
        - 이미지의 전체 경로 추출 --> cv2 or PIL로 이미지 open
        - 라벨 정보(ex. dict, if문....) --> 보통 폴더명, 파일명을 기준으로 함
            - cf) label.txt, label.csv 등 파일 이름에 해당하는 라벨이 지정된 문서로 제공되기도 함
        - augmentation 적용
        - return image, label
    - __len__(self)
        - 전체 데이터 길이 반환 --> list() --> len()

4. 학습(+검증)

5. 시험

6. 서비스(+배포)