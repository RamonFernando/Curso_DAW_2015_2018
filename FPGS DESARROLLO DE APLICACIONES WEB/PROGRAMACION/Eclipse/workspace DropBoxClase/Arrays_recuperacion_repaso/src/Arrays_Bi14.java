
public class Arrays_Bi14 {

	public static void main(String[] args) {
		// 14.- Esta tabla muestra los nombres y precios de cuatro art�culos de
		// unos grandes almacenes:
		// Guarda la informaci�n en un array llamado precios. Despu�s, muestra
		// esta informaci�n en pantalla y calcula el precio total de los cuatro
		// art�culos.
		
		// String precios [][] ={"Tablet Samsung", "120",}
		String precios[][] = new String[4][2];

		precios[0][0] = "tablet Samsung";
		precios[1][0] = "Movil sony";
		precios[2][0] = "Ipad Mini";
		precios[3][0] = "Movil HTC";
		precios[0][1] = "120";
		precios[1][1] = "115";
		precios[2][1] = "290";
		precios[3][1] = "95";
		
		int suma=0; 
		
		for (int i = 0; i < precios.length; i++) {
				System.out.print(precios[i][0] + " ");
				System.out.println( precios[i][1]);
		}
		for (int i = 0; i < precios.length; i++) {
			suma=suma + Integer.parseInt(precios[i][1]); 
			
		}
		System.out.println("Precio Total: " + suma);
		}
	
}
