#!/bin/bash
#Script de la hora
#Autor: Victor Ferrera Brioa
#Fecha 21/01/2025

hora=$(date +%H)

if [ $hora -ge 14 ] && [ $hora -le 16 ]; then 
	echo $hora
	echo "Hora de comer"
else 
	echo "La hora no está entre las 14:00 y las 16:00"
fi
