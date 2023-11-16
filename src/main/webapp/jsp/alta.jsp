<%@page import="com.curso.model.Producto"%>
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
<h3>Producto a dar de alta</h3>
<form action="darAlta.jsp">

	Nombre: <input type="text" name="nombre">
	Seccion: <input type="text" name="seccion">
	Precio: <input type="text" name="precio">
	Stock: <input type="checkbox" name="stock">
	<input type="submit">
</form>
</body>
</html>