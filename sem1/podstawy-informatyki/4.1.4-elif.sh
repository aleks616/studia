#!/bin/bash
ilosc_arg="$#"
if [ $ilosc_arg = "0" ]
then
echo "Nie podales argumentow"
elif [ $ilosc_arg = "1" ]
then
echo "Podales jeden argument: $1"
elif [ $ilosc_arg = "2" ]
then
echo "Podales dwa argumenty: $1 $2"
elif [ $ilosc_arg = "3" ]
then
echo "Podales trzy argumenty: $1 $2 $3"
else
echo "Podales wieksza liczbe argumentow"
fi
