@echo off
chcp 65001>nul
setlocal enabledelayedexpansion

:: Ruta del archivo que contiene el diccionario de palabras
set "diccionario=diccionario.txt"

:: Contar el número de líneas en el archivo
for /f %%A in ('find /c /v "" ^< %diccionario%') do set "line_count=%%A"

:: Generar un número aleatorio entre 1 y el número de líneas
set /a "random_line=!random! %% !line_count! + 1"

:: Leer la palabra en la línea aleatoria
for /f "tokens=* delims= usebackq" %%B in (`more +!random_line! %diccionario%`) do (
    set "palabra=%%B"
    goto :print_word
)

:print_word
echo Palabra aleatoria: %palabra%
pause
