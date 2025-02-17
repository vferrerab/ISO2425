#!/bin/bash
# Agenda (Entregable)
# Victor Ferrera Brioa
# 29/01/2025

while true; do

	echo "a - Añade una entrada a la agenda"
	echo "b - Busca por DNI una entrada"
	echo "c - Agenda completa"
	echo "d - Elimina una entrada"
	echo "e - Finaliza"
	echo
	read -p "Elija na opción de las anteriores " option



	case $option in

		 a)
			read -p "Introduzca el DNI de la persona " dni

			if grep "^$dni:" Agenda.txt ; then

			echo "El dni ya está archivado en esta agenda"

			else

			read -p "Introduzca el nombre de la persona " name
			read -p "Introduzca los apellidos de la persona " apell
			read -p "Introduzca la localidad donde reside " localidad

			echo "$dni:$name:$apell:$localidad" >> Agenda.txt

			echo "Se ha añadido con éxito la nueva entrada"

		;;

		b)

			read -p "Introduzca el dni de la persona que busca " dni
			buscar=$(grep $dni Agenda.txt)

			if $buscar; then

				name=$($buscar | cut -d ":" -f 2)
				apell=$($buscar | cut -d ":" -f 3)
				localidad=$($buscar | cut -d ":" -f 4)
				echo "la persona con DNI número $dni es: $name $apell, y vive en $localidad"

			else

				echo "Error, la persona a la que busca no está registrada"

			fi

		;;

		c)

			if [ -s Agenda.txt ]; then

				cat Agenda.txt

			else

				echo "La agenda está vacía, no hay entradas en ella"

			fi

		;;

		d)

			cat /dev/null > Agenda.txt
			echo "El fichero Agenda se ha vaciado con éxito"

		;;

		e)

			echo "Finalizando"
			break

		;;

		*)

			echo "Error la opción marcada no existe"

		;;

	esac
done




