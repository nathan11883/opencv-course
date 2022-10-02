docker run -v /tmp/.X11-unix:/tmp/.X11-unix -v c:/dev/git:/root/dev/git -e DISPLAY=$DISPLAY -p 5000:5000 -p 8888:8888 -it 39e3d1d5fd97 /bin/bash
