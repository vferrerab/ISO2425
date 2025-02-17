#!/bin/bash
#Victor Ferrera Brioa

if [ $UID != 0 ]; then

	echo "Eres root"
	exit

fi

if [ $# != 1 ]; then

	echo "Numero de parametros incorrecto"
	exit

fi

if [ ! -f $1 ]; then

	echo "El fichero no existe"
	exit

fi


for i in /home/*; do

	if [ -d $i ]; then

		cp $1 $i

	fi

done
