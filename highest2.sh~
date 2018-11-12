# Syntax: highest2 [filename] [howmany]
# Exercise from pag.92

# if filename is undefined the shell print "filename missing" to sderr and stops the script
filename=$1
filename=${filename:?"filename missing."}
# howmany now exists 
howmany=$2
echo "howmany is ${howmany:=10}"

sort -nr $filename | head -$howmany
