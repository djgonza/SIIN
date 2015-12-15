if exist c:\batch\%nombre%/nul goto mostrar

set /p crearCarperta="¿Deseas crear la carpeta? (s/n)"
 
if %crearCarperta%==s goto crear
if %crearCarperta%==n goto fin

:crear
	mkdir c:\batch\%nombre%
	set /a suma=%suma%+1
	echo.
	echo ************** Carpeta Creada *************
	echo.
	goto fin
:mostrar
	echo.
	echo Contenido de la carpeta
	echo *********************************** 
	echo.
	dir c:\batch\
:fin