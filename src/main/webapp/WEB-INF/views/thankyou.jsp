<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<div class="container">
		
			<p>
					Thank you, 
					<c:out value=${name }/>
			</p>
			<p>
					<label>Review your review, </label>
					<c:out value=${notes }/>
			</p>
			
			<p>
					You selected the number, 
			</p>
			<p>
					<c:out value=${rating }/>
			</p>
			
			<li><a href="/index">return home</a></li>
		</div>

</body>
</html>