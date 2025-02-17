#!/bin/bash
#Victor Ferrera Brioa

while true; do

date +%H:%M:%S

sleep 1s

hora=$(date +%H)
min=$(date +%M)
	if [ $hora -eq 14 ] && [ $min -eq 00 ]; then

		echo "Hora límite alcanzada"
		break

	fi

done


