#pylint:disable=no-member

import cv2 as cv
# Reading Videos
capture = cv.VideoCapture('../Resources/Videos/CMU2022.mp4')
haar_cascade = cv.CascadeClassifier('../Section #3 - Faces/haar_face.xml')
while True:
    isTrue, frame = capture.read()
    
    # if cv.waitKey(20) & 0xFF==ord('d'):
    # This is the preferred way - if `isTrue` is false (the frame could 
    # not be read, or we're at the end of the video), we immediately
    # break from the loop. 
    if isTrue:    
        gray_frame = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
        faces_rect = haar_cascade.detectMultiScale(gray_frame, scaleFactor=1.1, minNeighbors=5)
        print(f'Number of faces found = {len(faces_rect)}')
        for (x,y,w,h) in faces_rect:
            cv.rectangle(frame, (x,y), (x+w,y+h), (255,0,0), thickness=2)
        cv.imshow('Video', frame)
        if cv.waitKey(20) & 0xFF==ord('d'):
            break            
    else:
        break

capture.release()
cv.destroyAllWindows()
