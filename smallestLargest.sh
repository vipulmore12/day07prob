##!/bin/bash -x
echo "Enter size of array:"
read z
for((i=0;i<$z;i++))
do
arr[$i]=$(($RANDOM%1000+100))
done
echo "number generated are"
for((i=0;i<$z;i++))
do
echo ${arr[$i]}
done

small=${arr[0]}
secSmall=${arr[0]}
large=${arr[0]}
secLarge=${arr[0]}
for((i=1;i<$z;i++))
do
if [[ $small -gt ${arr[i]} || $secSmall -gt ${arr[i]} ]];
	then
		if [ $small -gt ${arr[i]} ]; then
			small=${arr[i]}
		else
			secSmall=${arr[i]}
		fi
fi
done

for((i=1;i<$z;i++))
do
if [[ $large -lt ${arr[i]} || $secLarge -lt ${arr[i]} ]];
	then
	if [ $large -lt ${arr[i]} ];
	then
	large=${arr[i]}
	else
	secLarge=${arr[i]}
	fi
fi
done
echo "Second Largest Number is :$secLarge"
echo "Second Smallest Number is :$secSmall"
