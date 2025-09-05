#!/bin/bash

wolne=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$wolne" -gt 80 ]; then
	echo "Uwaga dysk prawie pełny: $wolne% zajęte!"
else
	echo "Dysk OK: $wolne% zajęte."
fi
