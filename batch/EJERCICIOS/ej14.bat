REM *****************************************************
REM *  ej14.bat nom_dir1 nom_dir2 nom_dir3 nom_dir4 ...	*
REM *****************************************************


@echo off
cls

if "%1"=="" goto error
:inicio
	if "%1"=="" goto fin
	set /p opcion=¿Deseas crear (C) o mostrar (M) el contenido del directorio c:\batch\%1?
	if %opcion%==C goto crear
	if %opcion%==M goto mostrar
	shift
	goto inicio

:mostrar 
	call crear %nombre%
	goto inicio
:crear
	call crear %nombre%
	goto inicio
:error
	echo No se han introducido parametros

:fin
	echo.
	echo **************** Fin del proceso ************