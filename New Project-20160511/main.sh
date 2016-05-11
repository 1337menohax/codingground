#!/bin/bash
makeSolarSystem()
{
n=$1;
#outer loop is for printing number of rows in the system
for((i=1;i<=n;i++))
do
#This loop print spaces required
for((k=i;k<=n;k++))
do
echo -ne " ";
done
for((j=1;j<=i;j++))
do
echo -ne "*";
done
for((z=1;z<i;z++))
do
echo -ne "*";
done
#This echo used for printing new line
echo;
done
}
echo "Please enter some input: "
read input_variable
re='^[1-9]+$'
if ! [[ $input_variable =~ $re ]] ; then
   echo "error: $input_variable is not a number. 
   Well it is but I cant draw stars with this kind of number >.>.
   Blame my programmer.kthnxbai" >&2; exit 1
else
    echo "You entered: $input_variable"
    makeSolarSystem $input_variable
fi
