<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>C R U S T P U N K</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>

	<div class="container">

		<h2>Order Summary</h2>

		<p>
			Protein:
			<!-- safely produce HTML from string data -->
			<c:out value="${meat}" />

		</p>

		<ul>
			<c:forEach items="${toppings}" var="topping">

				<li><c:out value="${topping}" /></li>

			</c:forEach>

		</ul>

		<p>
			Beverage:
			<c:out value="${beverage}" />
		</p>

		<p>
			Special Requests:
			<c:out value="${notes }" />
		</p>
		
		<p>
			<c:out value="${email}" />
		</p>

		<p>
			<c:out value="${teach}" />
		</p>

		<p>
			<c:set value="${color}" var="col" scope="application" />

			<span style="background-color: ${col}">&nbsp; &nbsp;</span>
			<c:out value="${col}" />

		</p>

		<p>
			<fmt:formatNumber value="${age}" type="number" />
		</p>

		<!--  
		<p>
			<fmt:formatNumber value="${bigNumber}" pattern="#,###" />
		</p>
		-->
		<p>
			Date Of Order:
			<fmt:formatDate value="${date }" type="date" />
		</p>

		<p>
			
			<fmt:formatDate value="${date }" type="time" />
		</p>

		<p>
			<fmt:formatDate value="${date }" pattern="yyyy-MM-dd" />
		</p>


	</div>

</body>
</html>