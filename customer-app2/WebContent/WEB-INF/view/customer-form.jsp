<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Dodaj pracownika</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Dodaj pracownika</h2>
		</div>
	</div>

	<div id="container">
		<h3>Zapisz pracownika</h3>
	
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
					
			<table>
				<tbody>
					<tr>
						<td><label>Imię</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
				
					<tr>
						<td><label>Nazwisko</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email</label></td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Zapisz" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Powrót</a>
		</p>
	
	</div>

</body>

</html>










