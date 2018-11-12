echo "We'll see the role of asterix and snail (at) special variables."

echo "Asterix contains a single string repsenting all the input parameters concatenated."
echo "IFS is the Internal Field Separator and it modifies how positional parameters are listed up."

# $* is a single string that lists all of the input parameters.

echo "Example for $*."
echo "Standard IFS"
echo "$*"
echo "IFS=,"
IFS=,
echo "$*"
