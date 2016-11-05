#!/bin/bash

fswebcam \
    --delay 3 \
    --resolution $IMAGESIZE \
    --device /dev/video0 \
    --banner-colour "#FF000000" --line-colour "#FF000000" \
    --font suns:24 \
    --rotate $ROTATE \
    --frames 5 \
    --save /home/`date +%Y%m%d_%H%M%S`.jpg
