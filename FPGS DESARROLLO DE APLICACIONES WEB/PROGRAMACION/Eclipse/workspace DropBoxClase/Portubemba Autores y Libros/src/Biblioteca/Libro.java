package Biblioteca;

public class Libro {

	// Atributos
	private String titulo;
	private String ISBN;
	private Autor autor;
	private int a�oActual;

	public Libro(String titulo) {

	}

	public Libro(String titulo, String ISBN, Autor autor) {
		this.titulo = titulo;
		this.ISBN = ISBN;
		this.autor = autor;
	}

	public static int a�oActual() {
		return 2016;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String ISBN) {
		this.ISBN = ISBN;
	}

	public Autor getautor() {
		return autor;
	}

	public void  setautor(Autor autor){
	 	this.autor = autor;
	}
	public int geta�oActual(){
		return a�oActual;
	}
	public void seta�oActual(int a�oActual){
		this.a�oActual = a�oActual;
	}
	public String toString(){
		return "";
	}
}