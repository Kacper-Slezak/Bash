#!/bin/bash

url=$1
if [ -z "$url" ]; then
	echo "Brak adresu strony!"
	exit 1
fi

status=$(curl -s -o /dev/null -w "%{http_code}" -L "$url")


case ${status} in 
	200)
		echo "Strona ${url} działa (kod ${status})"
		;;
	301|302)
		echo "Strona ${url} przekierowuj (kod ${status})"
		;;
	403)
		echo "Strona ${url} zabronina (kod ${status})"
		;;
	404)
		echo "Strona ${url} nie znaleziona (kod ${status})"
		;;
	500)
		echo "Strona ${url} zwraca bład serwera (kod ${status})"
		;;
	*)
		echo "Strona ${url} zwróciła kod: ${status}"
		;;
esac	
