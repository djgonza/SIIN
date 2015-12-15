REM *****************************************************
REM *  UNO nom_dir1 nom_dir2 nom_dir3 nom_dir4 ...		*
REM *****************************************************


@echo off
cls

if "%1"=="" goto error

:inicio
	cls
	echo ***************** Menu ******************
	echo =========================================
	echo.
	echo (A) Atributos del fichero
	echo (M) Mas opciones
	echo (T) Terminar
	echo -----------------------------------------
	set /p opcion=Elige una opcion (A/M/T): 
	if %opcion%==A goto menu-a
	if %opcion%==M goto menu-m
	if %opcion%==T goto fin
	echo.
	echo Opcion no valida
	goto inicio

	:menu-a
		cls
		echo ***************** Menu Atributos ******************
		echo ===================================================
		echo.
		echo (V) Ver Atributos
		echo (L) Poner atributo de lectura
		echo (Q) Quitar atributo de lectura
		echo (R) Regresar al menu principal
		echo ---------------------------------------------------
		set /p opcion=Elige una opcion (V/L/Q/R): 
		if %opcion%==V goto menu-a-v
		if %opcion%==L goto menu-a-l
		if %opcion%==Q goto menu-a-q
		if %opcion%==R goto inicio
		echo.
		echo Opcion no valida
		goto menu-a

		:menu-a-v
			echo.
			attrib c:\batch\ficheros\%1
			pause
			goto menu-a
		:menu-a-l
			echo.
			attrib +r c:\batch\ficheros\%1
			echo Solo lectura
			pause
			goto menu-a

		:menu-a-q
			echo.
			attrib -r c:\batch\ficheros\%1
			echo Lectura y escritura
			pause
			goto menu-a

	:menu-m
		cls
		echo ***************** Menu Opciones ******************
		echo ===================================================
		echo.
		echo (R) Renombrar el archivo
		echo (C) Ver el contenido del archivo
		echo (V) Volver al menu principal
		echo ---------------------------------------------------
		set /p opcion=Elige una opcion (R/C/V): 
		if %opcion%==R goto menu-m-r
		if %opcion%==C goto menu-m-c
		if %opcion%==V goto inicio
		echo.
		echo Opcion no valida
		goto menu-m


		:menu-m-r
			echo.
			set /p nombre=¿nuevo nombre del archivo?: 
			if exist c:\batch\ficheros\%nombre% goto
			rename c:\batch\ficheros\%1 nombre
			echo.
			echo Nombre del archivo cambiado
			pause
			goto menu-m

			:menu-m-r-error
				echo.
				echo Ya existe un archivo con ese nombre
				goto menu-m-r

		:menu-m-c
			echo.
			type c:\batch\ficheros\%1
			pause
			goto menu-m

:error
	echo No se han introducido parametros

:fin
	echo ************** Fin del proceso ******************