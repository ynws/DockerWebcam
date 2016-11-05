FROM ubuntu

MAINTAINER ynws

RUN apt-get update && apt-get install -y fswebcam cron
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

ENV IMAGESIZE=1280x720 ROTATE=0

COPY capture.sh /

RUN env > /env
CMD /bin/bash /capture.sh && echo '*/20 * * * *  env - `cat /env` /bin/bash /capture.sh  >> /var/log/cron.log 2>&1' | crontab - && cron -f
