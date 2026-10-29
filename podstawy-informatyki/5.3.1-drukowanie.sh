#!/bin/bash
i=0
max=12
until [ $i -gt $max ]
do
echo "2^$i = $[2**$i]"
i=$[i+1]
done
