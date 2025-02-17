#!/bin/bash
# Ejercicio 4 pag 24
# Victor Ferrera Brioa
# 22/01/2025

read -p "Introduzca su dirección IP " ip

ip1=$(echo $ip | cut -d "." -f 1)
ip2=$(echo $ip | cut -d "." -f 2)


if [ $ip1 -ge 127 ]; then

	echo "Tiene una IP local"
	exit
fi

if [ $ip1 -eq 10 ]; then

	echo "Tiene una IP privada clase A"
	exit
fi

if [ $ip1 -eq 172 ] && [ $ip2 -ge 16 ] && [ $ip2 -le 32 ]; then

	echo "Tiene una IP privada clase B"
	exit
fi

if [ $ip1 -eq 192 ] && [ $ip2 -eq 168 ]; then

	echo "Tiene una IP privada clase C"
	exit
fi

if [ $ip1 -eq 169 ] && [ $ip2 -eq 254 ]; then

        echo "Tiene una IP pública"
	exit
fi

echo "IP pública"
