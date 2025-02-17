#!/bin/bash
#Script root
#Autor: Victor Ferrera Brioa
#Fecha 21/01/2025


if [ $UID == 0 ]; then
	echo "Eres root"
else
	echo "Error"
fi
