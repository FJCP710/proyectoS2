package com.curso.model;

/**
 * @author Admin
 *
 */
public class Producto {
	private String nombre;
	private String seccion;
	private double precio;
	private boolean stock;
	
	
	/**
	 * @param nombre
	 * @param seccion
	 * @param precio
	 * @param stock
	 */
	public Producto(String nombre, String seccion, double precio, boolean stock) {
		super();
		this.nombre = nombre;
		this.seccion = seccion;
		this.precio = precio;
		this.stock = stock;
	}
	
	/**
	 * @return nombre
	 */
	public String getNombre() {
		return nombre;
	}
	
	/**
	 * @param nombre
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	/**
	 * @return seccion
	 */
	public String getSeccion() {
		return seccion;
	}
	
	/**
	 * @param seccion
	 */
	public void setSeccion(String seccion) {
		this.seccion = seccion;
	}
	
	/**
	 * @return precio
	 */
	public double getPrecio() {
		return precio;
	}
	
	/**
	 * @param precio
	 */
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	
	/**
	 * @return stock
	 */
	public boolean isStock() {
		return stock;
	}
	
	/**
	 * @param stock
	 */
	public void setStock(boolean stock) {
		this.stock = stock;
	}
	
	@Override
	public String toString() {
		return "Producto: nombre: " + nombre + ", seccion: " + seccion + ", precio: " + precio + ", stock: " + stock;
	}
}
