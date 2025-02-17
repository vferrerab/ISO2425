#!/bin/bash
#Victor Ferrera Brioa

read -p "Introduce una ruta de un directorio " ruta
if [ -d $ruta ]; then

	for tam in $ruta/*; do

		du -hs $tam.*

	done

else

	echo "Ruta incorrecta"

fi
