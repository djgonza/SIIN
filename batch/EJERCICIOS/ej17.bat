REM *****************************************************
REM *  						Menu						*
REM *  	Pedimos un directorio y muchos ficheros			*
REM *  	si no se esta en c:\ se crea					*
REM *  	los ficheros se buscan en c:\batch y se copian	*
REM *****************************************************


@echo off
cls

:inicio:
	if "%2" == "" goto error
	set directorio=%1
	if not exist c:\batch\%1 mkdir c:\batch\%1
	shift
	goto copiar

:copiar
    if "%1" == "" goto fin
	if not exist c:\batch\ficheros\%1 goto copiar
	copy c:\batch\ficheros\%1 c:\batch\%directorio%
	shift
	goto copiar

:error
	echo no se han introducidos los parametros necesarios

:fin
	echo ************** Fin del proceso ******************
