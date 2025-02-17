#!/bin/bash
# Comprobar
# Victor Ferrera Brioa
# 28/01/2025

if [ -f $1 ]; then 

	echo "$1 es un archivo"

fi

if [ -d $1 ]; then

	echo "$1 es un directorio"

fi

if [ $# -ne 1 ]; then

	clear
	echo "Error no se ha introducido parámetro"

fi

