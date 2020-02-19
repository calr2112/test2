#!/bin/sh
/usr/bin/python /home/pindrop/bin/intercept.py import /home/pindrop/scripts/fraud.csv --wave_directory /data/fds/audio/fraud/ --delimiter ',' --datetime_format '%Y-%m-%d %H:%M:%S'
