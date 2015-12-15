REM *****************************************************
REM *  Pedir nombre de directorio						*				*
REN *  Voy a crear.bat 									*
REN *  compruebo si existe el directorio (/nul)			*
REM *  si no existe lo creo								*
REM *  Si existe se hace tree							*
REM *****************************************************


@echo off
cls
set suma=0

:inicio
	set /p nombre="Introduce un nombre de directorio (FIN para salir)"
	if %nombre%==FIN goto salir
	call crear %nombre%
	goto inicio


:salir 
	echo %suma% Carpetas creadas
	echo **************************************
	echo.
	dir c:\batch\