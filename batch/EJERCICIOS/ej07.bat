REM *****************************************************
REM *  Pedir numeros hasta que se de el 0			 	*
REN *  y escribir la suma								*
REM *****************************************************

@echo off
cls

set suma=0
:inicio
	set /p numero="Introduce un numero: "
	if %numero% == 0 goto final
	set /a suma=%suma% + %numero%
	goto inicio 


:final
	echo La suma es: %suma%
	echo ********** Proceso terminado ************