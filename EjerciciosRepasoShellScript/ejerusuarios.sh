#!/bin/bash
#Usuarios
# Victor Ferrera Brioa
# 28/01/2025

if [ $UID -eq 0 ]; then

	read -p "Introduce el nombre de usuario " user

	if grep "^$user:" /etc/passwd > /dev/null; then

		echo "OPCIONES"
		echo "1 - Bloquea al usuario"
		echo "2 - Desbloquea al usuario"
		read -p "Introduce una opcion " option
		case $option in

			1)

			sudo usermod -L $user

			;;

			2)

			sudo usermod -U $user

			;;

			*)

			echo "Opción no valida"

			;;

		esac

	else

		echo "El usuario no existe"
		read -p "Desea crearlo Si/No" create

			if [ $create == "Si" ]; then

				read -p "Elige nombre de usuario " name
				sudo useradd $name

			else

				exit

			fi

	fi

else

	exit

fi
