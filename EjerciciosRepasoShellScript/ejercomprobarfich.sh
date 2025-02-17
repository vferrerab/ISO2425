#!/bin/bash
# Comprobar fichero
# Victor Ferrera Brioa
# 28/01/2025

read -p "Introduce el nombre de tu fichero " fich

if [ -s $fich ]; then

	du -hs $fich
	ls -l $fich
	$fich > $()

else

	
fi
