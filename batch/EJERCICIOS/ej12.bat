REM *****************************************************
REM *  1- Crear directorio								*
REN *  2- Mostrar contenido del directorio 				*
REN *  3- Visualizar archivos							*
REM *  4- Finalizar										*
REM *  Pedir Opcion										*
REM *****************************************************


@echo off
cls
set suma=0

:inicio
	cls
	echo 1- Crear directorio
	echo 2- Mostrar contenido directorio
	echo 3- Visualizar archivos
	echo 4- Finalizar
	echo.		
	set /p menu="Selecciona una opcion: "
	if %menu%==1 goto uno
	if %menu%==2 goto dos
	if %menu%==3 goto tres
	if %menu%==4 goto salir
	cls
	goto inicio

:uno
	cls
	echo.
	set /p directorio="Nombre del directorio (FIN para volver): "
	if %directorio%==FIN goto inicio
	if exist c:\batch\%directorio% goto unoExiste
	goto crear
	:unoExiste
	echo.
	echo La carpeta ya existe
	pause
	goto uno	

:dos
	cls
	echo.
	set /p directorio="Nombre del directorio (FIN para volver): "
	if %directorio%==FIN goto inicio
	if exist c:\batch\%directorio% goto mostrarCarpeta
	echo.
	echo La carpeta no existe
	pause
	goto dos

:tres
	cls
	echo.
	set /p fichero="Nombre del fichero (FIN para volver): "
	if %fichero%==FIN goto inicio
	if exist c:\batch\ficheros\%fichero% goto mostrarFichero
	echo.
	echo El archivo no existe
	pause
	goto tres

:crear
	mkdir c:\batch\%nombre%
	echo.
	echo ************** Carpeta Creada *************
	echo.
	goto uno

:mostrarCarpeta
	echo.
	echo Contenido de la carpeta
	echo *********************************** 
	echo.
	dir c:\batch\%directorio%
	echo.
	echo Pulse tecla para regresar
	pause
	goto uno

:mostrarFichero
	cls
	echo [%fichero%]
	echo =====================================================
	type c:\batch\ficheros\%fichero%
	pause
	goto tres

:salir 
	echo ****************** Proceso terminado *********************
	echo ==========================================================
	echo.