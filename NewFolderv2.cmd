@echo off
setlocal enabledelayedexpansion

:: Caracteres alfanuméricos para el nombre aleatorio
set chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789

:: Generar una cadena aleatoria de 8 caracteres
set "random_str="
for /l %%i in (1, 1, 8) do (
    set /a index=!random! %% 62
    for %%j in (!index!) do set "random_str=!random_str!!chars:~%%j,1!"
)

:: Generar un nombre basado en la fecha y la cadena aleatoria
set "random_name=%date:~6,4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%_%random_str%"

:: Reemplazar espacios en blanco en el nombre de la carpeta
set "random_name=!random_name: =_!"

:: Crear la carpeta con el nombre aleatorio
mkdir "C:\ruta\%random_name%"

echo Carpeta creada: %random_name%
pause
