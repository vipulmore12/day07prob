##!/bin/bash -x
echo "Enter Number:"
read number
j=0
for((i=2;i<number;i++))
do
	while [[ $((number))%i -eq 0 ]]
		do
			arr[$j]=$i
			((j++))
			number=$(( $number / $i ))
		done
done

if [[ $number -gt 2 ]];
then
	arr[j]=$number;
	((j++))
fi

for((i=0;i<5;i++))
do
	echo ${arr[i]}
done
