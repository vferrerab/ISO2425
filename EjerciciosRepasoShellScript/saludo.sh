#!/bin/bash
# Script de prueba
# Autor: Victor Ferrera Brioa
# Fecha: 20/01/2025

clear

echo "Hola Mundo"


a=5
echo "El valor de a es $a"


usuarios=$(cut -d ":" -f 1 /etc/passwd)
echo $usuarios
# Si es solo la variable no hacen falta comillas


b="Asir"
echo $b

# Concatenar valores
c="Hola"
d="Mundo"

e=$c$d
echo $e


# Parametros
echo "Primer parametro $1"
echo "Segundo parametro $2"
echo "Tercer parametro $3"

echo $*
echo $#
