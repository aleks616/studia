#!/bin/bash
tablica=(1 3 9 "Ciag znakow" Ciag znakow)
echo ${tablica[0]}
echo ${tablica[1]}
echo ${tablica[2]}
echo ${tablica[3]}
echo ${tablica[4]}
echo ${tablica[5]}
tablica[0]=99
echo ${tablica[0]}

