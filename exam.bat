@echo off
rem Script del examen
rem Autor: Victor Ferrera Brioa
rem Fecha: 02/12/2024

echo Pulsa 1 para crear un usuario con nombre y contrasena
echo Pulsa 2 para crear un archivo
echo Pulsa 3 para ver el arbol de un directorio
echo Pulsa 4 para copiar tus archivos a una carpeta deniminada Backup
echo Pulsa 5 para salir

set /P var="Introduzca el numero"

if %var% == 1 goto name
if %var% == 2 goto archivo
if %var% == 3 goto directorio
if %var% == 4 goto copiar
if %var% == 5 goto salir

:name
set /P nombre="Introduce el nombre de tu nuevo usuario"
set /P contr="Introduce la contraseña de este usuario"
net user %nombre% %contr% /add
pause

:archivo
set /P arch="Introduce el nombre del archivo"
echo %USERPROFILE% > %arch%.txt
pause

:directorio
set /P direct="Elija el directorio"
tree %direct%
pause

:copiar
mkdir C:\Backup
xcopy /E C:\Desktop C:\Backup
pause

:salir
exit
