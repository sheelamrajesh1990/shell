#!/bin/bash
STARTTIME=$(date +$s)
echo  "Script executed at : $STARTTIME"

sleep 10

ENDTIME=$(date +$s)

echo "Script executed at "

TOTAL_TIME = $(($ENDTIME-$STARTTIME))

echo "Script exceuted in $TOTAL_TIME