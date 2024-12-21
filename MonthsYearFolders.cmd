@echo off
setlocal

:: Array con los nombres de los meses
set "months=Enero Febrero Marzo Abril Mayo Junio Julio Agosto Septiembre Octubre Noviembre Diciembre"

:: Crear carpetas
for %%m in (%months%) do (
    mkdir "C:\ruta\%%m"
    echo Carpeta creada: %%m
)

echo Todas las carpetas de los meses se han creado con éxito.
pause
