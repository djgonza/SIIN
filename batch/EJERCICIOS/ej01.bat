REM *********************************************************
REM * 				Este es el ejercicio 1					*
REM * Pasar 3 nombres de fichero como parametros 			*
REM * y visualizarlos										*
REM * (pasamos por parametro el nombre de los 3 ficheros)	*
REM *********************************************************

@echo off
cls
echo Contenido de fichero %1
echo =======================
type c:\batch\ficheros\%1
pause
cls
echo Contenido de fichero %2
echo =======================
type c:\batch\ficheros\%2
pause
cls
echo Contenido de fichero %3
echo =======================
type c:\batch\ficheros\%3
pause