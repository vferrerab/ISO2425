#!/bin/bash
# Ejercicio de Menú con CASE


echo "Pulsa 1 para ver la ruta actual de tu directorio"
echo "Pulsa 2 para introducir el nombre de una carpeta y ver su contenido"
echo "Pulsa 3 para introduce el nombre de un fichero para crearlo con la fecha actual"
echo "Pulsa 4 para salir"
read -p "Introduce un número " $num

case $num in

	1)

		pwd

	;;

	2)

	read -p "Introduce el nombre de tu carpeta " carpeta
		if [ -d $carpeta ]; then

			ls $carpeta

		else

			echo "Error, no existe la carpeta mencionada"

		fi

	;;

	3)

	read -p "Introduzca el nombre de su fichero " fich

		if [ -s $fich ]; then

			echo "Error, ya existe este fichero"

		else

			date > $fich

		fi
	;;

	4)

	exit

	;;


	*)
	echo "Error"
	;;
esac

