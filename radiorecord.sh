#!/bin/bash
#Silence Start detection 0.5 sec of 5% threshold Stop 10 sec of 5% threshold
#Record from default input
#Stop with ctl+c

/usr/bin/sox -t alsa default recording.wav silence 1 0.5 5% 1 10.0 5%
DATE=$(date +%Y%m%d%H%M%S)
mv recording.wav $DATE.recording.wav

read -t 1 -n 1 key

    if [[ $key = q ]]
    then
        break
    fi

./radiorecord.sh
