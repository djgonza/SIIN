REM *****************************************************
REM *  Pedir nombre de ficheros hasta escribir fin	 	*
REN *  y si existe el fichero se visualiza				*
REN *  si no existe error								*
REM *  se contabiliza el numero de aciertos y fallos	*
REM *****************************************************

@echo off
cls

set errores=0
set encontrados=0


:inicio
	set /p nombre="Introduce un nombre (FIN para finalizar): "
	if %nombre%==FIN goto final
	if exist c:\batch\ficheros\%nombre% goto existe
	cls
	echo El fichero %nombre% no existe
	set /a errores=%errores%+1
	goto inicio 

:existe
	cls
	set /a encontrados=%encontrados%+1
	type c:\batch\ficheros\%nombre%
	goto inicio

:final
	cls
	echo %encontrados% ficheros encontrados  %errores% fallos
	echo ********** Proceso terminado ************