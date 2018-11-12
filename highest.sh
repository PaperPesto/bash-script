# Syntax: highest2 [filename] [howmany]
# Exercise from pag.92

# if filename is undefined the shell print "filename missing" to sderr and stops the script
filename=$1
filename=${filename:?"filename missing."}
# howmany does not exists and {:-} set it to second parameter or -10 by default 
howmany=${2:-10}

sort -nr $filename | head -$howmany
