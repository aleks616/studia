#!/bin/bash
if [ "$#" -gt 2 ]
then
echo "Za duzo argumentow"
echo "Wywolanie: $0 nazwa_pliku [nazwa_katalogu]"
exit 1
fi
if [ "$#" = "0" ]
then
echo "Nie podales nazwy pliku"
echo "Wywolanie: $0 nazwa_pliku [nazwa_katalogu]"
exit 2
fi
if [ -n "$2" ]
then
mkdir "$2"
cp "$1" "$2"/
else
mkdir "default"
cp "$1" default/
fi
if [ "$?" = "0" ]
then
echo "Skopiowano"
else
echo "Nie skopiowano"
fi
