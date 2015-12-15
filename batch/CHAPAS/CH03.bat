REM *****************************************
REM *				VARIABLES				*
REN * Para hacer operaciones aritmeticas 	*
REM * hasy que poner /a 					*
REM *****************************************

@echo off
cls

set a=12
echo el valor de la variable a es: %a%
set a=patata
echo el valor de la variable a es: %a%
pause
cls
set /p nombre="Dame tu nombre: "
echo %nombre%
pause
cls
set /p numero1="Introduce Numero 1: "
set /p numero2="Introduce Numero 2: "
set /a suma=%numero1%+%numero2%
set /a resta=%numero1%-%numero2%
set /a multi=%numero1%*%numero2%
set /a divi=%numero1%/%numero2%
echo el valor de la suma es: %suma%
echo el valor de la resta es: %resta%
echo el valor de la multiplicacion es: %multi%
echo el valor de la division es: %divi%


