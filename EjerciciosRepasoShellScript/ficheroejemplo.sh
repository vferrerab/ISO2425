#!/bin/bash
#pedir fichero y mostrar tamaño

read -p "Introduzca el fichero " fich

if [ -f $fich ]; then

	echo "Existe el fichero $fich"
	tam=$( du -hs $fich | cut -f 1 )
	echo "El tamaño es $tam"

else

	echo "No existe el fichero"

fi 
