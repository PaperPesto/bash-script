#!/bin/bash
echo old $1 $2
echo new $3 $4
echo oldurl: oldrepo/$1/$2.git
echo newurl: newrepo/$3/$4.git

git clone --mirror oldrepo/$1/$2.git
cd $2.git
git remote add newrepo newrepo/$3/$4.git
git -c http.sslVerify=false push gitlab --mirror
