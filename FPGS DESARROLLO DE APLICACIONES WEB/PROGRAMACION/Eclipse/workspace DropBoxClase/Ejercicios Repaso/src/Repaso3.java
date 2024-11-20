/**
 * 
 * @author Ramon.
 *
 */
public class Repaso3 {

	public static void main(String[] args) {
		// Crea un programa que guarde la siguiente tabla de edades en forma de
		// array. A continuaci�n deber� buscar si hay alguna persona con 35
		// a�os. Si la hay, se mostrar� el mensaje "Localizada persona de 35
		// a�os". Utiliza una variable sem�foro llamada edadEncontrada.

		int[] edades = { 20, 25, 30, 39, 42, 30, 29, 28, 21, 60, 55, 20, 19 };

		boolean edadencontrada = false;

		for (int i = 0; i < edades.length && edadencontrada == false;i++) {
			if (edades[i] == 35) {
				edadencontrada = true;
			}
			
		}
		if (edadencontrada == true) {
			System.out.println("Localizada persona de 35 a�os ");
		} else {
			System.out.println("No se ha encontrado ninguna persona de 35 a�os.");
		}

	}

}
