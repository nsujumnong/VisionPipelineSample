#!/bin/sh

## 
# This script launch the video stream of the right camera
# on endoscope

##

gst-launch-1.0 -v v4l2src device=/dev/video0 ! video/x-raw,framerate=30/1,width=640,height=480 ! xvimagesink -v v4l2src device=/dev/video1 ! \
video/x-raw,framerate=30/1,width=640,height=480 ! xvimagesink