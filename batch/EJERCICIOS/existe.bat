if exist c:\batch\ficheros\%nombre% goto existe
cls
echo El fichero %nombre% no existe
goto salir
:existe
	cls
	echo [%nombre%]
	echo =====================================================
	type c:\batch\ficheros\%nombre%
	echo =========== Pulse tecla para regresar ===============
	pause
:salir