#!/bin/bash
# Ejercicio 1 pag 23
# Victor Ferrera Brioa
#

if [ -d $HOME/"Mis Cosas" ]; then 
	echo "Existe"
else
	mkdir $HOME/"Mis Cosas"
fi


