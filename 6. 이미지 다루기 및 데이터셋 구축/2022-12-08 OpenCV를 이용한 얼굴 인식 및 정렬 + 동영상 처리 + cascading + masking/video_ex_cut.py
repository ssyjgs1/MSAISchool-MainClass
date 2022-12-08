import cv2
import os

video_file_path = './video01.mp4'

# 동영상 캡처 객체 생성
cap = cv2.VideoCapture(video_file_path)
fps = cap.get(cv2.CAP_PROP_FPS)
print("fps >>>", fps)
count = 0
if cap.isOpened() :
    while True :
        ret, frame = cap.read()
        if ret : 
            if (int(cap.get(1)) % fps == 0) : # 나머지가 없을 경우에 = 25(fps값)로 나누어서 딱 떨어졌을 때, fps 값을 1초마다 추출
                os.makedirs('./frame_image_save', exist_ok = True)
                cv2.imwrite('./frame_image_save/' + 'frame%d.jpg' % count, frame)
                print('Save frame number >>>', str(int(cap.get(1))))
                count += 1
        else :
            break
else :
    print('비디오 열기 실패')
cap.release()
cv2.destroyAllWindows()