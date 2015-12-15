REM *****************************************************
REM *  Metemos una seri de numeros por parametro		*
REN *  hacemos la suma y la mostramos 					*
REN *  3- Visualizar archivos							*
REM *  4- Finalizar										*
REM *  Pedir Opcion										*
REM *****************************************************


@echo off
cls

:inicio
	if "%1"=="" goto fin
	set /a suma=%suma% + %1
	shift
	goto inicio
:fin
	cls
	echo  La suma es: %suma%
	echo.
	echo **************** Fin del proceso ************