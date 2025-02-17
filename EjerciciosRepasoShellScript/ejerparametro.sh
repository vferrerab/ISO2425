#!/bin/bash
#Script de parametros
# Victor Ferrera Brioa
# 28/01/2025


head -$1 $2 | tail -1

echo "Esta línea es la $1 del fichero mencionado"

if [ $# -ne 2 ]; then

	echo "Error, número de parámetros incorrecto"
	exit

fi
if [ ! -f $2 ]; then

	echo "Error, El segundo parámetro no es un fichero"
	exit

fi

