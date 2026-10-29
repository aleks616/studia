#!/bin/bash
for i in `ls *.txt`
do
tmp=`basename $i .txt`
mkdir $tmp
mv $i $tmp/
done
