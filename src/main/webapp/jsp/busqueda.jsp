<%@page import="java.util.ArrayList"%>
<%@page import="com.curso.model.Producto"%>
<%@page import="java.util.List"%>
<%@page import="com.curso.service.ProductosService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">

	Buscar por sesiones: <input type="text" name="buscar"> <input type="submit">

</form>

<%

String busqueda = request.getParameter("buscar");
List<Producto> listaProductos = new ArrayList<>();
ProductosService ps = new ProductosService();
List<Producto> productos = ps.mostrarProductos(listaProductos);
List<Producto> mostrar = new ArrayList<>();

%>
<table border="1">

	<tr>
		<th>Nombre</th>
		<th>Sección</th>
		<th>Precio</th>
		<th>Stock</th>
	</tr>	
	
		<% 
			
			for(Producto p: productos){
				if(p.getSeccion().equals(busqueda)){
					mostrar.add(p);
				}
			}
			for(Producto m: mostrar){
				%>
				<tr>
					<td><%=m.getNombre() %></td>
					<td><%=m.getSeccion() %></td>
					<td><%=m.getPrecio() %></td>
					<td><%=m.isStock() %></td>
				</tr>
				<%
			}
		%>
	</tr>

</table>


</body>
</html>