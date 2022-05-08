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

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New Delivery Person</a>
				<a>   </a>
				<a href="<%=request.getContextPath()%>/showavailable" class="btn btn-success">Available Delivery Persons</a>
				<a>   </a>
				<a href="<%=request.getContextPath()%>/list" class="btn btn-success">All Delivery Persons</a>
			<br>
			<br>
			
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>NIC</th>
						<th>Name</th>
						<th>Email</th>
						<th>Address</th>
						<th>Contact No.</th>
						<th>Availability</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="dPerson" items="${list_dPerson}">

						<tr>
							<td><c:out value="${dPerson.id}" /></td>
							<td><c:out value="${dPerson.nic}" /></td>
							<td><c:out value="${dPerson.name}" /></td>
							<td><c:out value="${dPerson.email}" /></td>
							<td><c:out value="${dPerson.address}" /></td>
							<td><c:out value="${dPerson.contact}" /></td>
							<td><c:out value="${dPerson.availability}" /></td>
							<td><a href="edit?id=<c:out value='${dPerson.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${dPerson.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>