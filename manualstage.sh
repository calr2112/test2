#!/bin/sh

ydt=$(date "+%Y%m%d")
# set header for csv file for import into FDS db
echo ref_id,start_utc,far_phone,near_phone,site,far_location > /home/pindrop/scripts/${ydt}.csv
#cd /data/fds/audio/NFCU/
find /data/fds/audio/NFCU -name *.wav|sed '/wav/!d'|while read line;do /usr/bin/python /home/pindrop/scripts/stage_nfdata.py "$line";done
#find /data/fds/audio/NFCU -name *.wav|sed '/wav/!d'|while read line;do echo $line;done
