##!/bin/bash -x
echo "Enter size of array:"
read z
for((i=0;i<$z;i++))
do
array[$i]=$(($RANDOM%1000+100))
done

for((i=${#array[@]}-1;i>=0; i--)); do
	for((j=1;j<=$i; j++)); do
		if [[ ${array[j-1]} -gt ${array[j]} ]]; then
			temp="${array[j-1]}"
			array[j-1]="${array[j]}"
			array[j]="$temp"
		fi
	done
done
echo "Sorted numbers are:"
for((i=0;i<$z;i++))
do
echo "${array[i]}"
done

#for((i=0;i<$z;i++))
#do
#echo "Second Smallest No is:${array[$i+1]} Second Largest No is: ${array[$z-2]}"
#break
#done
