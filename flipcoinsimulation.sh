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
