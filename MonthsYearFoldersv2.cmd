@echo off
setlocal

:: Array con los nombres de los meses
set "months=Joaquim Guapo Inteligente"

:: Crear carpetas
for %%m in (%months%) do (
    mkdir "C:\ruta\%%m"
    echo Carpeta creada: %%m
)

echo Todas las carpetas de los meses se han creado con éxito.
pause
