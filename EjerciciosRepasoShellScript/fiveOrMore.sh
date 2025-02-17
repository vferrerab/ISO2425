#!/bin/bash
# Victor Ferrera Brioa

if [ $# != 2 ]; then

	echo "Número de parámetros incorrecto"
	exit

fi

if [ -f $1 ]; then

	echo "El fichero ya exite"
	exit

fi

if [ ! -d $2 ]; then

	echo "El directorio no existe"
	exit

fi

vacio=$(ls $2 | wc -l)
if [ $vacio -eq 0 ]; then

	echo "El directorio está vacío"
	exit

fi

echo "Víctor Ferrera Brioa"



for i in $2/*.txt; do

	lineas=$(wc -l $i | cut -d " " -f 1)
	if [ $lineas -ge 5 ]; then

        	echo $i
        	echo $i >> $1
		palabras=$(cat $1 | wc -w)
                echo "El fichero original tiene $palabras palabras" >> $a.q
		cat $i >> $i.q

	fi

done

		fich=$(cat $i | wc -l)
                echo "Se han identificado $fich ficheros" >> $1



