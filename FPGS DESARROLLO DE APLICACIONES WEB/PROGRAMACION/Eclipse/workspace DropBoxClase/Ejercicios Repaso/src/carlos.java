
/**
 * 
 * @author Ramon.
 *
 */
import java.util.Scanner;

public class carlos {

	public static void main(String[] args) {
		// Ejercicio-1 Crea un programa que guarde la siguiente tabla de edades
		// en forma de
		// array. A continuaci�n deber� buscar si hay alguna persona con 35
		// a�os. Si la hay, se mostrar� el mensaje "Localizada persona de 35
		// a�os". Utiliza una variable sem�foro llamada edadEncontrada.
		// Ejercicio-2 Escribe un programa que lea una lista de nombres(uno a
		// uno, hasta un
		// maximo de 10) por consola y los vaya guardando en un array llamado
		// nombres.
		// La aplicacion terminara al pedir la de pedir palabras cuando el
		// usuario escriba nadie.
		Scanner entrada = new Scanner(System.in);
		String[] nombres = new String[10];
		boolean pedir = false;
		String aux = "";

		for (int i = 0; i < nombres.length-1 && pedir == false; i++) {
			System.out.println("Escriba un nombre:");
			aux = entrada.nextLine();

			if (aux.equals("nadie") == false) {
				nombres[i] = aux;
			} else
				pedir = true;

		}
		entrada.close();
	}
}
