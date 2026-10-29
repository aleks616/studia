#!/bin/bash
tablica=(1 9 2 3 11 23 0)
rozmiar=${#tablica[@]}
for i in `seq 0 $[rozmiar-1]`
do
echo ${tablica[$i]}
done
