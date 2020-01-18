<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Result</title>
</head>
<body>
	<h1>Datos</h1>
	<div>
    <h3>Form submitted successfully</h3>
</div>
 
<div>First Name: ${successModel.nombre}</div>
 
<div>Middle Name: ${successModel.apellido}</div>
 
<div>Last Name: ${successModel.edad}</div>
 
	

</body>
</html>