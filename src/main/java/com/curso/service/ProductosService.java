package com.curso.service;

import java.util.ArrayList;
import java.util.List;

import com.curso.model.Producto;

/**
 * @author Admin
 *
 */
public class ProductosService {
	List<Producto> productos = new ArrayList<>();
	
	/**
	 * @param productos
	 * @return productos
	 */
	public List<Producto> mostrarProductos(List<Producto> productos){
		if(productos.isEmpty()) {
			Producto p1 = new Producto("pantalla", "monitores", 2.1, true);
			Producto p2 = new Producto("pantall2", "monitores", 4.2, true);
			Producto p3 = new Producto("pantall4", "monitores", 4.3, false);
			
			Producto p4 = new Producto("raton", "ratones", 5.8, false);
			Producto p5 = new Producto("raton2", "ratones", 2.1, true);
			Producto p6 = new Producto("raton3", "ratones", 12.13, false);
			
			Producto p7 = new Producto("soporte", "soportes", 7.9, true);
			Producto p8 = new Producto("soporte2", "soportes", 5.7, false);
			Producto p9 = new Producto("soporte3", "soportes", 9.2, true);
			
			productos.add(p1);
			productos.add(p2);
			productos.add(p3);
			productos.add(p4);
			productos.add(p5);
			productos.add(p6);
			productos.add(p7);
			productos.add(p8);
			productos.add(p9);
		}
		
		return productos;
	}
	
	/**
	 * @param producto
	 * @return productos
	 */
	public List<Producto> darAlta(Producto producto){
			
		productos.add(producto);
		
		return productos;
		
	}
	
	
	
	
	
	
	
	
}
