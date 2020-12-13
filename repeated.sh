##!/bin/bash -x
echo -n "Enter Start:"
read m
echo -e "Enter end:"
read n
for ((i=m; i<=n; i++))
do
if [ $((i%11)) -eq 0 ]
then
	arr[i]=$i
	echo $i
fi
done
