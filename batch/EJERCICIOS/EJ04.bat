REM *********************************************************
REM * 				Este es el ejercicio 4					*
REM * Pedir el nombre de un fichero y visualizarlo			*
REM *********************************************************

@echo off
cls

set /p nombre="Nombre del fichero: "
type c:\batch\ficheros\%nombre%