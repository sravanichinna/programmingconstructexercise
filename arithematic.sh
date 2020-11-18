#!/bin/bash
read -p "ënter a number:" a
read -p "enter a number:" b
read -p "enter a number:" c
sol1=(( a + b * c ))
sol2=(( a * b + c ))
sol3=(( c + a / b ))
sol4=(( a % b + c ))
arr[0]=$sol1
arr[1]=$sol2
arr[2]=$sol3
arr[3]=$sol4
echo ${arr[@]}
temp=0
for((i=0 ; i<=4 : i++ ))
do
for((j=0 ; j<=4-i-1 ; j++ ))
do
if[[ ${arr[j]} -lt ${arr[$((j+1))]} ]]
then
temp=${arr[j]}
arr[j]=${arr[$((j+1))]}
arr[$((j+1))]=$temp
fi
done
done
echo "sort in decending order: " ${arr[@]}
for((i=0 ; i<=4 : i++ ))
do
for((j=0 ; j<=4-i-1 ; j++ ))
do
if[[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
then
temp=${arr[j]}
arr[j]=${arr[$((j+1))]}
arr[$((j+1))]=$temp
fi
done
done
echo "sort in ascending order: " ${arr[@]}



#!/bin/bash
headCount=0
tailCount=0
while(( $headCount != 21 && $tailCount != 21 ))
do
flip=$(( $RANDOM%2 ))
if [[ $flip -eq 1 ]]
then
echo -n "heads"
((headCount++))
else
echo -n "tails"
((tailCount++))
fi
done
echo "total no of heads:" $headCount
echo "total no of tails:" $tailCount
