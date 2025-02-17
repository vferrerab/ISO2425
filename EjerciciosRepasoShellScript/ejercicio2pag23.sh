#!/bin/bashç
# Ejer 2 pag 23 
# Victor Ferrera Brioa

carp=$1

if [ $# == 0 ]; then 

	read -p "Introduce el nombre de la carpeta para crearla " carp

fi

if [ -d $carp ] && [ -w $carp ]; then

	echo "Bienvenidos" > $carp/hola.txt

fi
