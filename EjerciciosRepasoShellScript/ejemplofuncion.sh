#!/bin/bash
# Victor Ferrera Brioa

clear

 		function suma(){
                sum=$(($1+$2))
                echo $sum
                }
                function resta(){
                res=$(($1-$2))
                echo $res
                }
                function multiplicacion(){
                mult=$(($1*$2))
                echo $mult
                }
                function division(){
                div$(($1/$2))
                echo $div
		}

while true; do
echo "Elige una opción"
echo "1 - Suma"
echo "2 - Resta"
echo "3 - Multiplicación"
echo "4 - División"
echo "5 - Salir"
echo
read -p "Introduce la opción " option
echo
read -p "Introduce el primer número " num1
read -p "Introduce el segundo número " num2 

case $option in

	1)

		suma $num1 $num2
	;;

	2)

		resta $num1 $num2

	;;

	3)

		multiplicacion $num1 $num2

	;;

	4)

		division $num1 $num2
	;;

	5)

		break

	;;

	*)

		echo "Opción no válida"

	;;

esac
done
