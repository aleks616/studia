#!/bin/bash
tablica=(1 3 9 "Ciag znakow" Ciag znakow)
ilosc_elementow=${#tablica[@]}
i=0
while [ $i -lt $ilosc_elementow ];
do
znaki[$i]=${#tablica[$i]}
i=$[i+1]
done
echo ${znaki[@]}
