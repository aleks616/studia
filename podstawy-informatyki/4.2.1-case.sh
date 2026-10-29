#!/bin/bash
echo -n "Podaj liczbe <1;12>: "
read miesiac
case "$miesiac" in
"1") echo "Styczen" ;;
"2") echo "Luty" ;;
"3") echo "Marzec" ;;
"4") echo "Kwiecien" ;;
"5") echo "Maj" ;;
"6") echo "Czerwiec" ;;
"7") echo "Lipiec" ;;
"8") echo "Sierpien" ;;
"9") echo "Wrzesien" ;;
"10") echo "Pazdziernik" ;;
"11") echo "Listopad" ;;
"12") echo "Grudzien" ;;
*) echo "Zla liczba"
esac
