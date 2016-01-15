window.usuarios = [];
window.usuarios[0] = {
	nombre: "Usuario1",
	pass: "14160702528"
}

function Encriptar (pass) {
	
	var passEnviar = 0;
	for(i=0; i<pass.length; i++){

		passEnviar += Math.pow(pass[i].charCodeAt(0), i-1);

	}

	return Math.floor(passEnviar);
}

function Login () {

	for(var i=0; i<usuarios.length; i++){

		//buscamos el nombre de usuario
		if($('#name').val() == usuarios[i].nombre){

			if(Encriptar ($('#pass').val()) == usuarios[i].pass){
				return true;
			}
		}
	}

	return false;

}

function CrearUsuario () {

	if($('#pass').val().toString().length < 4 || $('#pass').val().toString().length > 8 || $('#name').val() == ''){
		alert("Datos incorrectos para el nuevo usuario");
	}else{

		for(var i=0; i<usuarios.length; i++){

			//buscamos el nombre de usuario
			if($('#name').val() == usuarios[i].nombre){
				alert("Nombre de usuario no disponible!!!");
				return false;
			}else{
				usuarios[usuarios.length] = {
					nombre: $('#name').val(),
					pass: Encriptar ($('#pass').val())
				} 
				return true;
			}
		}

		return false;
	}
}

$(document).ready(function() {

	$("#nuevoUsuario").click(function () {
		if(CrearUsuario()){
			alert("Usuario creado!");
		}
	});

	$("#acceder").click (function () {
		if($('#pass').val().toString().length < 4 && $('#pass').val().toString().length > 8){
			alert("Contraseña incorrecta");
		}else{
			if(Login()){
				alert("Accedido!!");
			}else{
				alert("Nombre de usuario o contraseña incorrecto!");
			}
		}
	});

});