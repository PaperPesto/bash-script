INPUT=repositories.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read oldurl newurl
do
	echo -e "\n$oldurl -> $newurl"
	sh repo-migr-2.sh $oldurl $newurl
done < $INPUT
IFS=$OLDIFS
