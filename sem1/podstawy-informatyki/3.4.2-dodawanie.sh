#!/bin/bash
a=1
a=$(( a+1 ))
echo $a
a=$[a+10]
echo $a
let a=a-100
echo $a
