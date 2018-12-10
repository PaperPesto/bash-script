#!/bin/bash

MCS_FOLDER="/home/pi/MC_scripts"
. $MCS_FOLDER/RefRender.sh

PIDFILE=$MCS_FOLDER/running.pid
LOG=$MCS_FOLDER/running.log
RLOG=$MCS_FOLDER/refrender.log

function createpidfile {
	#Print the PID in a file
	echo $1 > $PIDFILE
	#check if echo exits an error
	if [ $? -ne 0 ]; then
		echo "`date +"(%F) [%T]:"` Couldn't create PID file" >> $LOG
		return 1
	else
		echo "`date +"(%F) [%T]:"` $PIDFILE created" >> $LOG
		return 0
	fi
}


#Just some argument checking and help
function friendlyreminder {
	echo "First argument should be the world's name (the same as the world's folder on the server)"
	echo "Second comes the number of threads to assign to mapcrafter (-j $2)"
	echo "Third is whether you want to update your world's copy (0 is true, everything else won't execute wget)"
}

if [ $1 = "--help" ]; then
	friendlyreminder
	exit 1
elif [ $# -ne 3 ]; then
	echo -e "Wrong number of arguments\n"
	friendlyreminder
	exit 1
fi



if [ -f $PIDFILE ]; then

	#The file is there, but let's check the PID
	PID=`cat $PIDFILE`
	ps -p $PID > /dev/null 2>&1

	if [ $? -eq 0 ]; then
		echo "`date +"(%F) [%T]:"` Process already running" >> $LOG
		exit 1
	else
		#Process not found, thus not running
		createpidfile $$
		refrender $1 $2 $3 &>> $RLOG
	fi
else
	#No file, thus not running
	createpidfile $$
	refrender $1 $2 $3 &>> $RLOG
fi

rm $PIDFILE
if [ $? -eq 0 ]; then
	echo "`date +"(%F) [%T]:"` $PIDFILE successfully removed" >> $LOG
else
	echo "`date +"(%F) [%T]:"` $PIDFILE removal error" >> $LOG
fi
