#!/bin/bash

#Tis was a test for cron related stuff

TXT="<html><body>Last modified: TIMESTAMP</body></html>"

echo $TXT | sed -E "s_TIMESTAMP_`date +"(%F) [%T]"`_g" | xargs echo > /var/www/html/index.html
