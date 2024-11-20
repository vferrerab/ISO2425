@echo off
REM Script Menu
REM Autor: Victor
REM Fecha: 20/11/24

echo Pulsa 1 para crear un archivo .txt
echo Pulsa 2 para crear un archivo .bat

set /P option="Opcion 1: txt Opcion 2:txt"
if %option% EQU 1 goto txt

if %option% EQU 2 goto bat

:txt
set /P txt="Introduce nombre a tu archivo txt "
echo > %txt%.txt
pause



:bat
set /P bat="Introduce nombre a tu archivo bat "
echo > %bat%.bat

