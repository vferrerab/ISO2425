#!/bin/bash
# Calculadora (Entregable)
# Victor Ferrera Brioa


if [ $# -eq 2 ]; then

	echo "Número de parámetros correcto"

else

	echo "Número de parámetros incorrecto"
	exit

fi

if [ -f $1 ]; then

	echo "EL fichero existe"
	exit

fi


Contador=0

while [ $Contador -lt $2 ]; do

	echo "S - Suma"
        echo "R - Resta"
        echo "M - Multiplicación"
        echo "D - División"
        echo "X - Salir de la calculadora"
	echo

	read -p "Operación " op
	read -p "Introduce un número " num1
	read -p "Introduce otro número " num2
	echo

	case $op in

		S)

			Sum=$(($num1 + $num2))
			echo "Suma"
			echo "$op $num1 $num2" >> $1
			echo "El resultado de la suma es $Sum"

		;;


		R)

			Res=$(($num1 - $num2))
			echo "Resta"
			echo "$op $num1 $num2" >> $1
			echo "El resultado de la resta es $Res"

		;;


		M)

			Mult=$(($num1 * $num2))
			echo "Multiplicación"
			echo "$op $num1 $num2" >> $1
			echo "El resultado de la multiplicación es $Mult"

		;;


		D)

			Div=$(($num1 / $num2))
			echo "División"
			echo "$op $num1 $num2" >> $1
			echo "El resultado de la división es $Div"

		;;


		X)

			clear
			break

		;;

		*)

			echo "La operación elegida es incorrecta"
			exit

		;;
	esac

Contador=$(($Contador+1))

done

pwd $1
