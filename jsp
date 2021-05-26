<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
	function validartexto(parametro){
		var patron = /^[a-zA-Z\s]*$/;
		if(parametro.search(patron)){
			return false;
		} else {
			return true;
		}
	}
	function validarcorreo(corr){
		var expReg= /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/;
		var esvalido= expReg.test(corr);
		if (esvalido==true){
			return true;
		} else{
			return false;
		}
	}
	function enviarFormulario(){
		var Nombre = document.forms["myform"]["nombre"].value;
		var Apellidos = document.forms["myform"]["apellidos"].value;
		var Correo = document.forms["myform"]["correo"].value;
		var a = "Los apellidos no pueden estar vacios";
		var m = 1;
		if(Nombre == "")
			alert ("El nombre no puede estar vacio");
		else if(validartexto(Nombre)==false){
			alert ("El nombre no puede tener numeros");
			m=m+1;
		}
		if(Apellidos == ""){
			alert(a);
			m=m+1;
		}
		else if(validartexto(Apellidos)==false){
			alert ("Los apellidos no pueden tener numeros");
			m=m+1;
		}
		if(Correo == ""){
			alert ("El correo no puede estar vacio");
			m=m+1;
		}
		else if(validarcorreo(Correo)==false){
			alert ("El correo no esta bien escrito");
			m=m+1;
		}
		if(m == 1){
			return true;
		}
		else{
			return dalse;
		}
	}
</script>
<style type="text/css">
		body{
			background-color: green;
			margin-left: 35%;
		}
		h1{
			color:yellow;
		}
		div{
			color:#E36B2C;
			padding: 10px;
			margin: 0px;
		}
		form{
			background: #00FF00;
			width: 12cm;
		}
</style>
<head>
	<h1>
		Formulario de registro - Mi web
	</h1>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<form method="post" action="Miservlet" onsubmit="return enviarFormulario()">
		<div>
			Nombre:<br>
			<input type="text" id="nomb" name="nombre" maxlength="50">
		</div>
		<div>
			Apellidos:<br>
			<input type="text" id="apel" name="apellidos" maxlength="50">
		</div>
		<div>
			Sexo:<br>
			<input type="radio" id="Masculino" name="sexo">Masculino<br>
			<input type="radio" id="Fenemino" name="sexo">Femenino<br>
		</div>
		<div>
			Correo:<br>
			<input type="text" id="corr" name="correo" maxlength="50">
		</div>
		<div>
			Deseo recibir información sobre novedades y ofertas<br>
			<input type="checkbox" name="rebinfo" checked="1">
		</div>
		<div>
			Declaro haber leido y aceptar las condiciones generales del programa y la normativa sobre protección de datos<br>
			<input type="checkbox" name="condiciones" checked="1">
		</div>
		<div>
			Poblacion:<br>
			<select name="transporte">

			<option>Arequipa</option>

			<option>Cusco</option>

			<option>Lima</option>

			<option>Puno</option>

			</select>
		</div>
		<div>
			Descripcion:<br>
			<textarea name="descripcion" size="70"></textarea>
		</div>
		<div>
			<input type="submit" value="Enviar">>
		</div>
		<!--comentario sobre el código-->
	</form>
</body>
</html>
