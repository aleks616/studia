#!/bin/bash
numer=10
if [ "$numer" -ge "0" ] && [ "$numer" -le "10" ]
then
echo "$numer jest z przedzialu: <0; 10>"
else
echo "$numer nie jest z przedzialu: <0; 10>"
fi
if [ "$numer" -lt "10" ] || [ "$numer" -gt "20" ]
then
echo "$numer nie jest z przedzialu: <10; 20>"
else
echo "$numer jest z przedzialu: <10; 20>"
fi
