REM *****************************************************
REM *  Pedir nombres de ficheros hasta introducir fin	*
REN *  LLamar a existe.bat								*
REN *  si no existe error								*
REM *  													*
REM *****************************************************

@echo off
cls

:inicio
	cls
	set /p nombre="Introduce un nombre (FIN para finalizar): "
	if %nombre%==FIN goto final
	call existe %nombre%
	goto inicio

:final
	echo ************ Programa Finalizado ******************
