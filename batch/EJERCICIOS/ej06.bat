REM *****************************************************
REM *  Pedir por pantalla el nombre de una carpeta	 	*
REN *  comprobar si exite en c:\batch					*
REM *  si existe mostrar el contenido 					*
REM *  si no existe crearla								*
REM *  /nul para las carpetas							*
REM *****************************************************

@echo off
cls

set /p nombreCarpeta="Nombre de la carpeta: "


if exist c:\batch\%nombreCarpeta%/nul goto existe 
mkdir c:\batch\%nombreCarpeta%
echo Carpeta %nombreCarpeta% creada

goto final


:existe 
	dir c:\batch\%nombreCarpeta%


:final
	pause
	echo ********** Proceso terminado ************