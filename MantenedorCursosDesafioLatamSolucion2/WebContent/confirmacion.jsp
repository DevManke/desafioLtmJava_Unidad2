<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario Inscripción</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<% 
	int idInsc = (Integer)request.getAttribute("idInsc");
	String nombreAlumno = (String) request.getAttribute("Nombre");
	String telefono = (String) request.getAttribute("Telefono");
	int idCurso = (Integer) request.getAttribute("IdCurso");
	int IdFormaPago = (Integer) request.getAttribute("IdFormaPago");
%>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Mantenedor De Cursos</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="preListarInscripciones">Home</a></li>
      <li><a href="preInscripcion">Inscribir Cursos</a></li>
    </ul>
  </div>
</nav>


<div class="container">
	<h3>Registro exitoso</h3><br>
	Nombre de alumno: <%=nombreAlumno%><br>
	Telefono Contacto: <%=telefono%><br>
	Id de curso: <%=idCurso%><br>
	Id forma de pago: <%=IdFormaPago%><br>
</div>
</body>
</html>