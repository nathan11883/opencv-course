 set-variable -name DISPLAY -value 192.168.1.210:0.0

docker run -v c:/dev/git:/root/dev/git -e DISPLAY=$DISPLAY -p 5000:5000 -p 8888:8888 -it nathan_opencv /bin/bash


REM --device=/dev/video0:/dev/video0 