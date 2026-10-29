#!/bin/bash
if [ "$#" != 1 ]
then
echo "Podales zla ilosc argumentow."
echo "Wywolanie: $0 nazwa_pliku"
exit 1
fi
if [ -e "$1" ]
then
echo "Plik istnieje"
else
echo "Plik nie istnieje"
fi
