#!/bin/bash

if [ $# -eq 0 ]; then
	dir=$(pwd)
else
	dir="$1"
fi

if [ ! -d "$dir" ]; then
	echo "Błąd: Katalog '${dir}' nie istnieje."
	exit 1
fi

if [ ! -r "$dir" ]; then
    echo "Błąd: Brak uprawnień do odczytu katalogu '$dir'."
    exit 1
fi

liczba=$(ls -1 "$dir" | wc -l)

echo "W katalogu ${dir} jest ${liczba} plików."
