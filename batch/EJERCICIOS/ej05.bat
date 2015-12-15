REM *****************************************
REM *				VARIABLES				*
REN * Pedir 3 numero					 	*
REM * suma, media y producto				*
REM *****************************************

@echo off
cls

set /p numero1="Introduce Numero 1: "
set /p numero2="Introduce Numero 2: "
set /p numero3="Introduce Numero 3: "

set /a suma=%numero1%+%numero2%+%numero3%
set /a media=%suma%/3
set /a multi=%numero1%*%numero2%*%numero3%

echo el valor de la suma es: %suma%
echo el valor de la media es: %media%
echo el valor de la multiplicacion es: %multi%
