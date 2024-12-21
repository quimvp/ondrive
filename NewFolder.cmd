@echo off
setlocal enabledelayedexpansion

:: Genera un nombre aleatorio basado en la fecha y la hora
set "random_name=%date:~6,4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%%time:~6,2%"

:: Reemplaza los espacios en blanco en el nombre de la carpeta
set "random_name=!random_name: =_!"

:: Crea la carpeta con el nombre aleatorio
mkdir "C:\ruta\%random_name%"

echo Carpeta creada: %random_name%
pause
