#!/bin/bash
# Script para ver si es par o impar
# Victor Ferrera Brioa
# 27/01/2025


read -p "Introduzca un número para saber si es par o impar " num
resto=$(($num % 2))

if [ $resto -eq 0 ]; then 

	echo "Es un número par"

else

	echo "Es un número impar"

fi
