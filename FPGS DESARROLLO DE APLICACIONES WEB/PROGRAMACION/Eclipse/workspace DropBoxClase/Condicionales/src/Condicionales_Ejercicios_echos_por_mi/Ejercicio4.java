package Condicionales_Ejercicios_echos_por_mi;

import java.util.Scanner;
/**
 * 
 * @author Ramon.
 *
 */
public class Ejercicio4 {

	public static void main(String[] args) {
		// 4.- Crea un programa que pida al usuario una contrase�a. Si escribe
		// "1234" el programa responder� "Acceso concedido."
		Scanner entrada = new Scanner (System.in);
		
		boolean pass = false;
		String respuesta;
		
		System.out.println("Escribe la contrase�a: ");
		respuesta = entrada.nextLine();
		
		if (respuesta.equals("1234")){
			
			if (pass = true){
				System.out.println("Acceso concedido");
			}
		}else{
			System.out.println("Acceso denegado");
		}
		entrada.close();
	}
	
}
