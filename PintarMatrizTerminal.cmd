@echo off
chcp 65001>nul

:: Función para imprimir una fila de la matriz
:print_row
setlocal enabledelayedexpansion
echo │       │       │       │
echo │       │       │       │
echo │       │       │       │
if "%1" neq "3" echo ├───────┼───────┼───────┤
endlocal
goto :eof

:: Imprimir la matriz 3x3
echo ┌───────┬───────┬───────┐
call :print_row 1
call :print_row 2
call :print_row 3
echo └───────┴───────┴───────┘

pause
