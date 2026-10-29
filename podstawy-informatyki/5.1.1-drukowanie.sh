#!/bin/bash
tablica=(1 9 2 3 11 23 0)
for i in 0 1 2 3 4 5 6
do
echo ${tablica[$i]}
done
for i in {0..6}
do
echo ${tablica[$i]}
done
