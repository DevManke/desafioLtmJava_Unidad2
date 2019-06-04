<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejemplo de condicion</title>
</head>
<body>
	<!-- Codigo Java  -->
	<% 
		Date date = new Date();
		date.getMonth();
		if(date.getMonth() != 0){
	%>
	<!-- Codigo HTML -->
		<h1>Solo me mostrare si el dia es distinto a 0</h1>
	<% 
		} //codigo java.
	%>
</body>
</html>