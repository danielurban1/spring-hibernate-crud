<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
	<title>Lista pracowników</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Lista pracowników</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Customer -->
		
			<input type="button" value="Dodaj pracownika"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"
			/>
		
		
			<table>
				<tr>
					<th>Imię</th>
					<th>Nazwisko</th>
					<th>Email</th>
					<th>Operacje</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
				
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>					

					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>					
					
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						
						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Zmień</a>
							|
							<a href="${deleteLink}"
							   onclick="if (!(confirm('Czy na pewno chcesz usunąć tego pracownika?'))) return false">Usuń</a>
						</td>
						
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	

</body>

</html>









