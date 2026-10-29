#!/bin/bash
echo -n "Wpisz tekst: "
read tekst
echo "$tekst"
read -p "Wpisz tekst: " tekst
echo "$tekst"
read -p "Wpisz elementy tablicy: " -a tablica
echo ${tablica[@]}
read -p "Wpisz tekst: "
echo "$REPLY"
