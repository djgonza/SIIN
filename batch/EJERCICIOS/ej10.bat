REM *****************************************************
REM *  Mostrar Menu										*
REN *  Pedir numero 									*
REN *  si no es correcto error sino ir a la opcion		*
REM *  													*
REM *****************************************************

@echo off
cls

:inicio
	echo 1. Saludo
	echo 2. Despedida
	echo 3. Condemor
	echo 4. Fin 
	set /p opcion="Introduce una opcion: "

	if %opcion%==1 goto saludo
	if %opcion%==2 goto despedida
	if %opcion%==3 goto condemor
	if %opcion%==4 goto fin

	cls
	echo Opcion Incorrecta!!
	echo ************************************
	echo.
	goto inicio

:saludo
	cls
	echo Hola!!!!!!
	echo *******************************
	echo.
	goto inicio
:despedida
	cls
	echo Adios!!!!!
	echo *******************************
	echo.
	goto inicio
:condemor
	cls
	echo lo que sea!!!!
	echo *******************************
	echo.
	goto inicio
:fin
	cls
	echo *************** Proceso Terminado *************