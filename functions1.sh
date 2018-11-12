function getname
{
    VAR1=SILVESTER
    VAR2=STALLONE
    echo "Inside the function."
    echo "VAR1 is $VAR1"
    echo "VAR2 is $VAR2"
}

VAR1=ARNOLD
VAR2=SHWARZENEGGER

echo "You are in the main script."
echo "Unlike C programs, variables inside a function have a global scope and are not cleared when functions stop running"
echo "Outside the function:"
echo "VAR1 is $VAR1"
echo "VAR2 is $VAR2"
echo "Called to getname"
getname
echo "Again outside the function"
echo "VAR1 is $VAR1"
echo "VAR2 is $VAR2"
echo "You can see that exists one only copy of VAR1 and VAR2, and these are shared between main shell and function subshell unless you declare it local insidethe function."
