# 셀레늄 이용하여 데이터셋 결과물 디렉토리 스크린샷, 데이터 csv로 만든 결과(학습 100장, 테스트용 20장) 스크린샷까지가 dataset class 코드까지( 최소 3종류)
# dataset class는 mnist학습 네트워크의 입력에 맞게 생성(리사이즈)
# 된다면 학습과 테스트 진행(이건 기존 pdf처럼 자유양식으로 첨부)
# 라이브러리 설정 --> 이미지 읽어오기 --> 데이터셋에 추가 --> 데이터셋의 데이터프레임화 --> csv 출력
import os
import pandas as pd

dic_train = {
    'name' : [],
    'label' : []
}

dic_test = {
    'name' : [],
    'label' : []
}

path_train = 'C:/Users/ssyjg/Documents/GitHub/MSAISchool-MainClass/7. 데이터 증강 라벨링, 이미지 처리, 데이터셋 구현, 데이터 가공 프로젝트/2022-12-09 PyTorch, Selenuim - Fashion MNIST 데이터로 모델 생성 및 평가하기 + 커스텀 이미지 데이터셋 만들기/data/animal/train'
path_test = 'C:/Users/ssyjg/Documents/GitHub/MSAISchool-MainClass/7. 데이터 증강 라벨링, 이미지 처리, 데이터셋 구현, 데이터 가공 프로젝트/2022-12-09 PyTorch, Selenuim - Fashion MNIST 데이터로 모델 생성 및 평가하기 + 커스텀 이미지 데이터셋 만들기/data/animal/test'

list_train = os.listdir(path_train)
list_test = os.listdir(path_test)

index = 0
for train_file in list_train :
    if 'elephant' in train_file :
        dic_train['name'].append(train_file)
        dic_train['label'].append('elephant')
        index += 1
    elif 'lion' in train_file :
        dic_train['name'].append(train_file)
        dic_train['label'].append('lion')
        index += 1
    elif 'tiger' in train_file :
        dic_train['name'].append(train_file)
        dic_train['label'].append('tiger')
        index += 1

for test_file in list_test :
    if 'elephant' in test_file :
        dic_test['name'].append(test_file)
        dic_test['label'].append('elephant')
        index += 1
    elif 'lion' in train_file :
        dic_test['name'].append(test_file)
        dic_test['label'].append('lion')
        index += 1
    elif 'tiger' in train_file :
        dic_test['name'].append(test_file)
        dic_test['label'].append('tiger')
        index += 1

pd_dic_train = pd.DataFrame(dic_train)
pd_dic_train.to_csv('./annotations-train.csv')

pd_dic_test = pd.DataFrame(dic_test)
pd_dic_test.to_csv('./annotations-test.csv')