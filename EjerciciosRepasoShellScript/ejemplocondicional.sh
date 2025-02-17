#!/bin/bash
# Condicional de prueba

clear
a=5

if [ $a == 5 ]; then
	echo "A vale 5"
else
	echo "A no vale 5"
fi


if [ $a -eq 5 ]; then
	echo "A vale 5"
else
	echo "A no vale 5"
fi


if [ $a -ne 5 ]; then
	echo "A no vale 5"
else
	echo "A vale 5"
fi


