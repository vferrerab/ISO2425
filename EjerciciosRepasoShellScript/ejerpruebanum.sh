#!/bin/bash
#Script de prueba

read -p "Elige un número " a
read -p "Elige otro número " b

if [ $a -gt $b ]; then
	echo "$a es mayor que $b"
else 
	echo "$a es menor o igual que $b"
fi
