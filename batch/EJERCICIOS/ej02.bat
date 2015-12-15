REM *********************************************************
REM * 				Este es el ejercicio 2					*
REM * Pasar 3 nombres de fichero como parametros 			*
REM * y visualizarlos										*
REM * con shift (puntea el parametro anterior)				*
REM *********************************************************

@echo off
cls
echo Contenido de fichero %1
echo =======================
type c:\batch\ficheros\%1|more
pause
cls
shift
echo Contenido de fichero %1
echo =======================
type c:\batch\ficheros\%1|more
pause
cls
shift
echo Contenido de fichero %1
echo =======================
type c:\batch\ficheros\%1|more
pause