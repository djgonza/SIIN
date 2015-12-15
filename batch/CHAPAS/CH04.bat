REM *****************************************
REM *			Condicionales				*
REN *  Si existe un fichero los muetra		*
REM *  if exist para saber si existe 		*
REM *  un fichero							*
REM *  /nul para las carpetas
REM *****************************************

@echo off
cls

if exist c:\batch\ficheros\juan.bas goto existe 
echo No existe el fichero
pause 
goto final


:existe 
	type c:\batch\ficheros\juan.bas
	pause

:final
	echo ********** Proceso terminado ************