#!/bin/bash

MC_SERVER="MOCKSERVER"
MC_USER="MOCKUSER"
MC_PASSWD="MOCKPWD"
DOWNLOAD_TO="/home/pi/"

DOWNLOG="/home/pi/MC_scripts/down.log"

MAPCRAFTER="/home/pi/mapcrafter/src"

TILE_SIZE=150


function checkram	{
	
	FREE_RAM=$(free -m | awk 'FNR == 2 {print $4}')
	VERO=0
	
	if [ $FREE_RAM -lt $(expr $TILE_SIZE \* $1) -o $VERO ]; then
		echo "Warning: available RAM is $FREE_RAM" >&2
	fi
}


function refrender {
	if [ $3 -eq 0 ]; then
		wget -o $DOWNLOG -nH -N -r -P $DOWNLOAD_TO ftp://$MC_USER:"$MC_PASSWD"@$MC_SERVER/"$1"
	fi
	$MAPCRAFTER/mapcrafter -j $2 -c $MAPCRAFTER/"$1"_render.config.txt
}


checkram 1
