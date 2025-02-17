#!/bin/bash
# Victor Ferrera Brioa

read -p "Introduce un número " num
for ((i=0; i<=10; i++)); do

	res=$(($num*$i))
	echo $num x $i = $res

done
