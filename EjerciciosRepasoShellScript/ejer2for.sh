#!/bin/bash
# Victor Ferrera Brioa


for i in $*; do

if [ -d $i ]; then
	for f in $i/*; do

		if [ ! -s $f ]; then
			echo "Fichero vacio: $f"
		fi

	done
else

	echo "La capeta $i no exite"

fi

done
