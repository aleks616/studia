#!/bin/bash
tablica=(1 9 2 3 11 23 0 -3 31 11 93 223 -1312)
rozmiar=${#tablica[@]}
min=${tablica[0]}
max=${tablica[0]}
for i in `seq 0 $[rozmiar-1]`
do
if [ ${tablica[$i]} -lt $min ]
then
min=${tablica[$i]}
fi
if [ ${tablica[$i]} -ge $max ]
then
max=${tablica[$i]}
fi
done
echo $min
echo $max
