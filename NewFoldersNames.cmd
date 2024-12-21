@echo off
setlocal enabledelayedexpansion

:: Caracteres alfanuméricos para los nombres
set chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789

:: Función para generar una cadena aleatoria de 8 caracteres
set "generate_random_name="
for /l %%i in (1, 1, 3) do (
    set "random_str="
    for /l %%j in (1, 1, 16) do (
        set /a index=!random! %% 62
        for %%k in (!index!) do set "random_str=!random_str!!chars:~%%k,1!"
    )
    mkdir "C:\ruta\!random_str!"
    echo Carpeta creada: !random_str!
)

pause
