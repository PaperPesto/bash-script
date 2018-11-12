# Syntax: highest3 [filename] [howmany] [-h --header]
# Exercise from pag.92

# if filename is undefined the shell print "filename missing" to sderr and stops the script
filename=$1
filename=${filename:?"filename missing."}


header=$3
echo -e -n ${header:+"ALBUMS\tARTIST\n"}

sort -nr $filename | head -${2:-10}
