#!/bin/bash

# Comprobar si es vocal o consonante
# Victor Ferrera Brioa 
# 27/01/2025

read -p "Introduce una letra " letter

case $letter in

	"a"|"e"|"i"|"o"|"u")

	echo "Vocal"

	;;

	*) 

	echo "Consonante"

	;;

esac


