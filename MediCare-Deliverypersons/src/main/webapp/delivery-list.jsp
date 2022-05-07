<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>MediCare</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> MediCare </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Delivery Persons</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/dlist"
					class="nav-link">Deliveries</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of All Delivery Persons</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/dnew" class="btn btn-success">Add
					New Delivery</a>
				<a>   </a>
				<a href="<%=request.getContextPath()%>/dlist" class="btn btn-success">All Deliveries</a>
			<br>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Delivery ID</th>
						<th>Order ID</th>
						<th>Delivery person Name</th>
						<th>Delivery person ID</th>
						<th>Order Details</th>
						<th>Destination</th>
						<th>Delivery Date</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="delivery" items="${list_delivery}">

						<tr>
							<td><c:out value="${delivery.dlid}" /></td>
							<td><c:out value="${delivery.oid}" /></td>
							<td><c:out value="${delivery.dlperson}" /></td>
							<td><c:out value="${delivery.dlpersonid}" /></td>
							<td><c:out value="${delivery.odetails}" /></td>
							<td><c:out value="${delivery.destination}" /></td>
							<td><c:out value="${delivery.dldate}" /></td>
							<td><a href="dedit?id=<c:out value='${delivery.dlid}' />">Edit</a>
							<a href="ddelete?id=<c:out value='${delivery.dlid}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>