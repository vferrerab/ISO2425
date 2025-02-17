#!/bin/bash
# Ejer de Areas
# Victor Ferrera Brioa
# 28/01/2025

echo "Menú de Opciones"

echo "1 - Círculo"
echo "2 - Cuadrado"
echo "3 - Triángulo"
echo
read -p "Da la opción escribiendo el número " option

case $option in

	1)

	read -p "Dame el radio " r

	pi=3
	res=$(($pi*$r*$r))
	echo "El área del círculo es $res"

	;;

	2)

	read -p "Dime el lado " l

	rescuadrado=$(($l*$l))
	echo "El área del cuadrado es $rescuadrado"
	;;

	3)

	read -p "Dime la altura " a
	read -p "Dime la base " b
	restriangulo=$((0.5*$b*$a))
	echo "El área del triángulo es $restriangulo" 
	;;

	*)
	echo "Opción no válida"
	;;

esac
