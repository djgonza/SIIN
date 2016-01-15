import java.util.Scanner;

public class Encriptacion {

	private String[][] Usuarios;
	private Scanner teclado;

	public Encriptacion () {
		Usuarios = new String[1][2];
		Usuarios[0][0] = "UsuarioUno";
		Usuarios[0][1] = "";
		teclado = new Scanner(System.in);
	}

	public int encriptar (int clave) {
		//aplicamos el polinomio
		int aDevolver = 0;
		aDevolver += clave%10;
		aDevolver -= (int) Math.pow((clave%10)%10, 2);
		aDevolver += (int) Math.pow(((clave%10)%10)%10, 3) * 3;
		aDevolver += (int) Math.pow((((clave%10)%10)%10)%10, 4) * 2;

		return aDevolver;
	}

	public void conexion () {
		System.out.println("Introduce un nombre de usuario: ");
        String nombreUsuario = teclado.nextLine();
	}

}