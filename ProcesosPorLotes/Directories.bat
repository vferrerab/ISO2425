@echo off
REM Script Menu
REM Autor: Victor
REM Fecha: 20/11/24

echo Presiona 1 para crear un fichero
echo Presiona 2 para mostrar el arbol del directorio usuarios
echo Presiona 3 para mostrar archivos con extension txt
echo Presiona 4 para crear los directorioa alfredoff, marinapg y ramoman en tu actual dierctorio
echo Presiona 5 para copiar el contenido de la carpeta Usuarios al Escritorio

set /P opcion=
if %opcion% EQU 1 goto fichero
if %opcion% EQU 2 goto arbol
if %opcion% EQU 3 goto txt
if %opcion% EQU 4 goto directorio
if %opcion% EQU 5 goto copiar

:fichero
set /P ficher="Introduce el nombre de tu fichero: "
echo > %ficher%.txt
pause
exit

:arbol
tree /F C:\Usuarios
pause
exit 

:txt
dir *.txt
pause
exit 

:directorio
mkdir alfredoff
mkdir marinapg
mkdir ramomam
pause
exit 

:copiar
mkdir C:\Copia
xcopy /E %USERPROFILE% C:\Copia
pause
