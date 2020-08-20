<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>C R U S T P U N K</title>
</head>
<body>

	<div>
		<h2>E A T M Y A S S</h2>

		<!-- action is default SAME path as FORM -->
		<!-- method defines type of request upon SUBMIT -->
		<form method="post">
		
		<p>
			<label for="size">Size</label>
			<select name="size" id="size">
				<option>Small</option>
				<option>Medium</option>
				<option>Large</option>
			</select>
		</p>

			<p>
				<label>Horse</label> 
					<input type="radio" name="protein" value="horse" /> 
				<label>Merguez</label>
					<input type="radio"	name="protein" value="merguez" /> 
				<label>Spam</label> 
					<input type="radio" name="protein" value="spam" /> 
				<label>Pepperoni</label>
					<input type="radio" name="protein" value="pepperoni" /> 
				<label>Tofu</label>
					<input type="radio" name="protein" value="Tofu" />
			</p>
			<p>T O P P I N G S $ 1 . 9 9 E A C H</p>
			<p>
				<label for="toppingCount">How many toppings?</label>
			<input name="toppingCount" id="toppingCount" type="number" value="0" required min="0" max="10" step="1"/>
			<ul>
			<c:forEach var="topping" items="${ toppings }">
				<li><c:out value="${ topping }"/>
			</c:forEach>
			</ul>
			</p>

			<p>
				<label>LIBATIONS</label> <select name="LIBATION">
					<option value="">None</option>
					<option value="HORCHATA">HORCHATA</option>
					<option value="MOUNTAIN HOLLER">MOUNTAIN HOLLER</option>
					<option value="THAI TEA">THAI TEA</option>
					<option value="TOPO CHICO">TOPO CHICO</option>

				</select>

			</p>

			<p>
				<label>SPECIAL REQUESTS</label> <input type="text" name="notes"
					maxlength="1000" />
			</p>


			<fieldset>
				<legend>Contact Info</legend>

				<!-- HTML5 Validation -->
				<p>
					Name: <input type="text" name="name" required pattern="[A-Za-z]+"
						minlength="2" maxlength="10" />
				</p>

				<p>
					Age: <input type="number" name="age" min="0" max="110" step="1" />
				</p>

				<p>
					Email: <input type="email" name="email" />
				</p>

				<p>
					Order Date: <input type="date" name="order-date" />
				</p>

			</fieldset>

			<button type="submit">Submit A</button>
			<input type="submit" value="Submit B" />

		</form>

	</div>

</body>