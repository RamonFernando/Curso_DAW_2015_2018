package Condicionales_Ejercicios_echos_por_mi;

import java.util.Scanner;

public class Ejercicio5 {

	public static void main(String[] args) {
		// 5.- Crea un programa que pregunte un n�mero de mes. Si el n�mero
		// introducido est� entre 1 y 12, mostrar� un mensaje de aceptaci�n:
		// "Mes correcto". De lo contrario, se mostrar� un mensaje de error:
		// "Mes no v�lido".
		Scanner entrada = new Scanner (System.in);
		
		System.out.println("Introduzca un numero de mes: ");
		int num= entrada.nextInt();
		
		if (num > 0 && num < 13){
			System.out.println("Mes correcto");		
			}else{
				System.out.println("Error" + " mes " + num +" no valido");
			}
	
	
	entrada.close();
	}

}
