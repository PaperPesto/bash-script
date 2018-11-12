echo "Snail is used to store the input parameters as a list of string\
s."

# $@ is a vector of strings, each of them is a parameter input

# Function that counts input arguments
function countargs
{
    echo "Number of arguments passed to countargs: $#"
}

# ------------------- WARNING ------------------------ #
# -- it only works only with double-quoted strings --- #
countargs "$*"
countargs "$@"
