#!/bin/bash
OLDURL=$1
NEWURL=$2
BASENAME=$(basename $OLDURL)
echo -oldurl: $OLDURL
echo -newurl: $NEWURL
echo -basename: $BASENAME

git clone --mirror $OLDURL
cd $BASENAME
git remote add gitlab $NEWURL
git -c http.sslVerify=false push gitlab --mirror
