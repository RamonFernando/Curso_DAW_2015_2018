
/**
 * 
 * @author Ram�n
 *
 */

// Esto es un array bidimencional.
public class Arrays14 {

	public static void main(String[] args) {
		// Esta tabla muestra los nombres y precios de cuatro art�culos de unos
		// grandes almacenes:
		// Guarda la informaci�n en un array llamado precios. Despu�s, muestra
		// esta informaci�n en pantalla y calcula el precio total de los cuatro
		// art�culos.

		int total = 0;
		String[][] precios = { { "Tablet Samsung", "120" }, { "Movil Sony", "115" }, { "iPad Mini", "290" },
				{ "Movil HTC", "95" } };
		System.out.println("      Art�culos \n=====================");

		for (int i = 0; i < precios.length; i++) {
			System.out.print(precios[i][0] + "\t");
			System.out.print(precios[i][1]);
			System.out.println(" �");
		}
		;

		for (int j = 0; j < precios.length; j++) {
			total = Integer.parseInt(precios[j][1]) + total;
		}

		System.out.println("Total = " + total + " �");
	}

}
