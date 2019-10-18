<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

	<head>

		<title>List Customers</title>

		<!-- Reference stylesheet -->
		<link type="text/css"
				rel="stylesheet"
				href="${pageContext.request.contextPath}/resources/css/style.css"/>
		
	</head>

<body>
	List Customers
	<br>
	<br>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">
			<!-- Add the add-customer button -->
			
			<input type="button" value="Add Customer"
				onclick="window.location.href='showFormForAdd'; return false;"
				/>
			
			<!-- Add our html table here -->
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>E-mail</th>
					<th>Action</th>
				</tr>
				
				
				<!--  Loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
				
				<!-- Construct an update link with customer id -->
				<c:url var="updateLink" value="showFormForUpdate">
					<c:param name="customerId" value="${tempCustomer.id }" />
				</c:url>
				
					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						
						<td>
							<!-- Display the update-link -->
							<a href="${updateLink}">Update</a>
						</td>
					</tr>
					
				</c:forEach>
			</table>
		</div>
	</div>
</body>

</html>