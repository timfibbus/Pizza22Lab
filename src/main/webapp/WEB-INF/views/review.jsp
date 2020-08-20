<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>C R U S T P U N K</title>
</head>
<body>
	<div>
	
	<form method="post">
	<p>
	<h3><label>W O R D S G O H E R E</label></h3>
	<input type="text" name="notes" maxlength="1000"/>
	</p>
	<p>
	
	<p>
	<h3>W H A T I S Y O U R N A M E</h3>
	<input type="text" name="name" maxlength="100">
	</p>
	
	<h3><label>R A T I N G</label></h3>
	<p>
	0<input type="radio" name="rating" value="0"/>
	1<input type="radio" name="rating" value="1"/>
	2<input type="radio" name="rating" value="2"/>
	3<input type="radio" name="rating" value="3"/>
	4<input type="radio" name="rating" value="4"/>
	5<input type="radio" name="rating" value="5"/>
	</p>
	</p>
	
	<input type="submit" value="Push Me"/>
	</form>
	</div>
	
	
</body>
</html>