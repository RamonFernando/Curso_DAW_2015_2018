package Condicionales_Ejercicios_echos_por_mi;

import java.util.Scanner;

/**
 * 
 * @author Ramon.
 *
 */

public class Ejercicio7 {

	public static void main(String[] args) {
		// 7.- Juego de adivinar el n�mero secreto. El ordenador nos preguntar�
		// un n�mero del 1 al 10. Si coincide con el n�mero secreto (que habr�s
		// codificado como una constante entera) nos felicitar�. Si no, nos dir�
		// que hemos fallado.
		Scanner entrada = new Scanner(System.in);

		final int NUM;
		System.out.println("Introduzca un numero entre 1 y 10: ");
		NUM = entrada.nextInt();

		if (NUM > 10) {
			System.out.println("Por favor introduzca el numero correcto");

		}

		if (NUM == 4) {
			System.out.println("Felicidades, has acertado.");

		}
		if (NUM != 4) {
			System.out.println("Has fallado");
		}

		entrada.close();
	}

}
