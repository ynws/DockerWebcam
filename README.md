## webcam container
Webcam interval capture container
https://hub.docker.com/r/ynws/webcam/

## Run
docker run -d --device=/dev/video0:/dev/video0 -v /path/to/savedir/:/home/ ynws/webcam

## Capture timing
* Immediately after startup (for setting test)
* Every 20 minutes

## Change interval time
ex: every 5 minutes
docker exec `container_name` ./cronSetting.sh 5

