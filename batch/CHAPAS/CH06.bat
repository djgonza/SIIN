REM *****************************************
REM *		Condicionales					*
REN *  Pasamos una serie de parametros 		*
REN *  al fichero y recorremos todos los 	*
ren *  parametros hasta que se acaben		*
REM *****************************************

@echo off
cls
rem if pato==pato echo cua cua

:inicio
	if "%1"=="" goto fin
	echo %1
	pause
	shift
	goto inicio
:fin
	echo **************** Fin del proceso ************