#!/bin/bash
while [ TRUE ]
do
echo "Menu programu"
select option in "Data" "Lista plikow" "Uptime" "Rozmiar plikow" \
"Koniec"
do
case $option in
"Data") date ;;
"Lista plikow") ls ;;
"Uptime") uptime ;;
"Rozmiar plikow") du -sh * ;;
"Koniec") exit ;;
*) echo "Zla opcja"
esac
break
done
echo -e "\n"
done
