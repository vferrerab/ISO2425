#!/bin/bash

#Ejercicio CASE
#Victor Ferrera Brioa
#27/01/2025

echo "Pulsar 1 para salir "
echo "Escribe crear para crear una carpeta en el home del usuario "
echo "Escribe borrar  para borrar el contenido de la carpeta "
echo
read -p "Introduce un una orden " num

case $num in

	1)

	exit

	;;

	crear)

	mkdir /home/$USER/BAK

	;;

	borrar)

		if [ -d /home/$USER/BAK ]; then 

			rmdir /home/$USER/BAK

		fi

	;;

	*)

	echo "Error"

	;;

esac
