#!/bin/bash

k=1;
for ((i=1;i<=9;i++)); 
do 
    for ((j=$((i+1));j<=9;j++));
    do
	sed "s/Pair #1/Pair #$k/" pair.html > pair$k.html
	sed -i '' "s/vida/vid$i/" pair$k.html
	sed -i '' "s/vidb/vid$j/" pair$k.html
	((k++))
    done
done