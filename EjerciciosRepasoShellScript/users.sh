#!/bin/bash
#Script Users
# Víctor Ferrera Brioa


if [ $# -eq 0 ]; then

	num=1000

else

	num=$1

fi

IFS=:

mes=$(date +%b)
dia=$(date +%a)
anio=$(date +%Y)
hora=$(date +%H:%M)

contador=0
echo "====================================================================================="
echo "Informe de usuarios de $dia-$mes-$anio a las $hora"
while read us x uid fid d h shell; do

	if [ $uid -gt $num ]; then

		echo "$us - $uid"

		contador=$(($contador + 1))
	fi

done < /etc/passwd

echo "Total: $contador usuarios"
echo "====================================================================================="

name=$(whoami)
echo "$dia-$mes-$anio - $hora - El usuario $name ha solicitado el informe" >> /tmp/logeventos

