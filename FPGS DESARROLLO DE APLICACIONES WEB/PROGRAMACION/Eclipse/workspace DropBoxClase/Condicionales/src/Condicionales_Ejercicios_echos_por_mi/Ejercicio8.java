package Condicionales_Ejercicios_echos_por_mi;

import java.util.Scanner;

public class Ejercicio8 {

	public static void main(String[] args) {
		// 8.- Crea un programa que pregunte al usuario c�mo se dice en ingl�s
		// "ordenador". Si el usuario responde "computer" entonces recibir� una
		// felicitaci�n. Si no, recibir� un mensaje de consolaci�n.
		
		Scanner entrada = new Scanner(System.in);
		
		String ord;
		
		System.out.println("Introduzca la palabra ordenador en ingles: ");
		ord = entrada.nextLine();
		
		if( ord.equals("computer")){
			System.out.println("Felicidades, has acertado.");
		}else{
			System.out.println("Has fallado");
		}
		entrada.close();
	}

}
