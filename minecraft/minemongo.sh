#!/bin/bash

MCJSONSTATS="/home/pi/mcJsonStats/"

function minemongo {
	java -jar $MCJSONSTATS/mcjsonstats.jar $1
}
