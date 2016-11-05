## HOW
Webcam interval capture container

## RUN
docker run -d --device=/dev/video0:/dev/video0 -v /path/to/savedir/:/home/ ynws/webcam

## Capture timing
* Immediately after startup (for setting test)
* Every 20 minutes

