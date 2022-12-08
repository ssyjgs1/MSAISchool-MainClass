import cv2

##### 동영상 속성 정보 가져오기 #####
cap = cv2.VideoCapture('./video01.mp4')
width = cap.get(cv2.CAP_PROP_FRAME_WIDTH)
height = cap.get(cv2.CAP_PROP_FRAME_HEIGHT)
frame_count = cap.get(cv2.CAP_PROP_FRAME_COUNT)
fps = cap.get(cv2.CAP_PROP_FPS)
print('너비 >>>', width, '높이 >>>', height)
print('fps >>>', fps, 'frame count >>>', frame_count)

##### 동영상 파일 읽기 #####
if cap.isOpened() : # 캡쳐 객체 초기화 확인
    while True :
        ret, frame = cap.read()
        if ret :
            cv2.imshow('video file show', frame)
            cv2.waitKey(25)
        else :
            break
else :
    print('비디오 파일 읽기 실패')

cap.release()
cv2.destroyAllWindows()