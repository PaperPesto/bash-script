function getname
{
    local VAR1=SILVESTER
    local VAR2=STALLONE
    echo "Inside the function."
    echo "VAR1 is $VAR1"
    echo "VAR2 is $VAR2"
}

VAR1=ARNOLD
VAR2=SHWARZENEGGER

echo "You are in the main script."
echo "VAR1 and VAR2 are defined as local inside funtion getname, so their values remains inside function scope."
echo "Outside the function:"
echo "VAR1 is $VAR1"
echo "VAR2 is $VAR2"
echo "Called to getname"
getname
echo "Again outside the function"
echo "VAR1 is $VAR1"
echo "VAR2 is $VAR2"
echo "This is the main variables usage in such programs as C and others."
