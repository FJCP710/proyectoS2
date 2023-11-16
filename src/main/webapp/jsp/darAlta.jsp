<%@page import="com.curso.service.ProductosService"%>
<%@page import="com.curso.model.Producto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
ProductosService ps = new ProductosService();
String nombre = request.getParameter("nombre");
String seccion = request.getParameter("seccion");
double precio = Double.valueOf(request.getParameter("precio"));
boolean stock = Boolean.valueOf(request.getParameter("stock"));

if(!nombre.equals(null) && !seccion.equals(null) && precio != 0.0){
	Producto producto = new Producto(nombre,seccion,precio,stock);
	ps.mostrarProductos(ps.darAlta(producto));
	%><p><%=producto.toString() %> añadido con éxito</p>
	<%
} else {
	%> <p>Ha de rellenar todo el formulario</p>
	<%
}
%>
</body>
</html>