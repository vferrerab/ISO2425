#!/bin/bash
# Ejercicio 3 pag 24
# Victor Ferrera Brioa
# 22/01/2025

read -p "Introduzca el nombre de usuario " user
read -s -p "Introduzca la contraseña " password
echo

if [ $user == "Pepe" ] && [ $password == "qwerty" ]; then

	clear
	echo "Bienvenido de vuelta"
	echo $(date)

else
	if [ $user != "Pepe" ]; then

		clear
		echo "Usuario incorrecto"
	fi
	if [ $password != "qwerty" ]; then

		echo "Error, la contraseña no es correcta"

	fi

fi
