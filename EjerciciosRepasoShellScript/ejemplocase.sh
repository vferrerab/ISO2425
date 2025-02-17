#!/bin/bash

# Ejemplo CASE

read -p "Da un numero" num

case $num in



	5)

	echo "Pulsaste 5"

	;;

	6)

	echo "Pulsaste 6"

	;;

	*)

	echo "Opcion no valida"

	;;


esac
