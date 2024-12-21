@echo off
:loop
cls
echo.
echo   #############################
echo   #                           #
echo   #         Madrid            #
echo   #                           #
echo   #        %time:~0,2%:%time:~3,2%:%time:~6,2%           #
echo   #                           #
echo   #############################
timeout /t 1 >nul
goto loop
