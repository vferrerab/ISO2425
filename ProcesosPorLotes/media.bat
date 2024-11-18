@echo off
REM Script de la media
REM Autor: Victor
REM Fecha: 18/11/24

set num1=4
set num2=6
set num3=5
set nummedia=3
set /A suma=%num1% + %num2% + %num3%
set /A media=%suma% / %nummedia%


echo La media de los tres numeros %num1% %num2% %num3% es %media%
