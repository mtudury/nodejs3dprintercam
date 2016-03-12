#!/bin/bash

# on raspberry i would recommand put data to a tmpfs drive using symbolic link in order to avoid stressing the sd card
# sample fstab line
# tmpfs     /ramdrive tmpfs rw,size=10M,nodev,noexec,mode=1777 0 0
#
# mkdir /ramdrive
# mount /ramdrive
# ln -s /ramdrive data 

while true;do
    fswebcam --save data/working.jpg -r 1280x720
    cp data/working.jpg data/now.jpg
    sleep 3
done
