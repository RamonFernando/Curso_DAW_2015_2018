/**
 * 
 * @author Ramon.
 *
 */
public class Rep_Iosmany_Arrays_1 {

	public static void main(String[] args) {
		// // Ejercicio-1 Crea un programa que guarde la siguiente tabla de
		// edades
		// en forma de array. A continuaci�n deber� buscar si hay alguna persona
		// con 35
		// a�os. Si la hay, se mostrar� el mensaje "Localizada persona de 35
		// a�os". Utiliza una variable sem�foro llamada edadEncontrada.

		int[] edades = { 20, 25, 30, 28, 39, 42, 30 };
		boolean edadEncontrada = false;

		for (int i = 0; i < edades.length; i++) {
			if (edadEncontrada == false) {
				if (edades[i] == 35) {
					edadEncontrada = true;
				}
			}

		}
		if (edadEncontrada) {
			System.out.println("Localizada persona de 35 a�os");
		} else {
			System.out.println("No se ha encontrado ninguna persona con 35 a�os");
		}
	}

}
