#!/bin/bash
# Script deploy ABC
echo =======================================================================================
echo deploy ABC versione $1 ambiente PRODUZIONE
echo =======================================================================================
echo recupero il war da url/ABC/${1}/ABC.war
wget url/ABC/$1/ABC.war --output-document ABC.${1}.war
mv ABC.${1}.war /tomcat/ABC/webapps/ABC.war
