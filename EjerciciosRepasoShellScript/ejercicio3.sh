#!/bin/bash
# Operaciones basicas
# Autor: Victor Ferrera Brioa
# Fecha: 20/01/2025
clear

read -p "Introduce el primer numero " a
read -p "Introduce el segundo numero " b

suma=$(($a + $b))

resta=$(($a - $b))

mult=$(($a * $b))

div=$(($a /  $b))

resto=$(($a %  $b))

echo "$a + $b es igual a $suma " 
echo "$a - $b es igual a $resta"
echo "$a * $b es igual a $mult"
echo "$a / $b es igual a $div"
echo "El resto de $a / $b es igual a $resto"
