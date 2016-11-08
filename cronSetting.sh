#!/bin/bash

echo '*/'$1' * * * *  env - `cat /env` /bin/bash /capture.sh  >> /var/log/cron.log 2>&1' | crontab -
crontab -l
