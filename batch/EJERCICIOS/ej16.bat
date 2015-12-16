REM *****************************************************
REM *  						Menu						*
REM *****************************************************


@echo off
cls

:inicio
	cls
	echo ***************** Menu ******************
	echo =========================================
	echo.
	echo (R) Red
	echo (F) Ficheros
	echo (C) Carpetas
	echo (T) Terminar
	echo -----------------------------------------
	set /p opcion=Elige una opcion (R/F/C/T): 
	if %opcion%==R goto menu-red
	if %opcion%==F goto menu-ficheros
	if %opcion%==C goto menu-carpetas
	if %opcion%==T goto fin
	echo.
	echo Opcion no valida
	goto inicio


	:menu-red
		cls
		echo ***************** Menu Red ******************
		echo =========================================
		echo.
		echo (P) Ping
		echo (I) IpConfig  
		echo (V) Volver 
		echo -----------------------------------------
		set /p opcion=Elige una opcion (P/I/V):
		if %opcion%==P goto menu-red-ping
		if %opcion%==I goto menu-red-ipconfig
		if %opcion%==V goto inicio
		echo.
		echo Opcion no valida
		goto inicio

		:menu-red-ping
			cls
			echo ***************** Menu Ping ******************
			echo =========================================
			echo.
			echo (P) Ping 127.0.0.1
			echo (O) Ping a otro equipo
			echo (V) Volver 
			echo -----------------------------------------
			set /p opcion=Elige una opcion (P/I/V):
			if %opcion%==P goto menu-red-ping
			if %opcion%==O goto menu-red-ipconfig
			if %opcion%==V goto inicio
			echo.
			echo Opcion no valida
			goto menu-red

			:menu-red-ping-p
				cls
				ping 127.0.0.1
				pause
				goto menu-red-ping

			:menu-red-ping-o
				cls
				set /p ip=Ip del equipo: 
				ping %ip%
				pause
				goto menu-red-ping

		:menu-red-ipconfig
			echo.
			ipconfig
			pause
			goto menu-red

	:menu-ficheros
		cls
		set /p nombre=Introduce el nombre del fichero (FIN para salir): 
		if %nombre%==FIN goto inicio
		if not exist c:\batch\ficheros\%nombre% goto menu-ficheros-error
		type c:\batch\ficheros\%nombre%
		pause
		goto menu-ficheros

		:menu-ficheros-error
			echo.
			echo El fichero no existe
			pause
			goto menu-ficheros

	:menu-carpetas
		cls
		echo ***************** Menu Carpetas ******************
		echo =========================================
		echo.
		echo (C) Crear
		echo (M) Mostrar Contenido  
		echo (V) Volver 
		echo -----------------------------------------
		set /p opcion=Elige una opcion (P/I/V):
		if %opcion%==C goto menu-carpetas-crear
		if %opcion%==M goto menu-carpetas-mostrar
		if %opcion%==V goto inicio
		echo.
		echo Opcion no valida
		goto inicio

		:menu-carpetas-crear
			echo.
			set /p nombre=Nombre de la Carpetas
			if exist c:\batch\ficheros\%nombre%\null goto menu-carpetas
			mkdir c:\batch\ficheros\%nombre%
			echo Carpeta creada!!!!
			pause
			goto menu-carpetas
		:menu-carpetas-mostrar
			echo.
			set /p nombre=Nombre de la Carpetas
			if not exist c:\batch\ficheros\%nombre%\null goto menu-carpetas
			dir c:\\batch\ficheros%nombre%
:fin
	echo ************** Fin del proceso ******************
