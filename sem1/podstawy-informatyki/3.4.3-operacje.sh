#!/bin/bash
a=1
b=2
echo $(($a+$b))
echo $[$a/b]
wynik=$[b*$b+2*a-8*b]
echo $wynik
echo $(($a + 3))
