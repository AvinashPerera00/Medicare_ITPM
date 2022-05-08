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
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${dPerson != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${dPerson == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${dPerson != null}">
            			Edit Delivery Person
            		</c:if>
						<c:if test="${dPerson == null}">
            			Add New Delivery Person
            		</c:if>
					</h2>
				</caption>

				<c:if test="${dPerson != null}">
					<input type="hidden" name="id" value="<c:out value='${dPerson.id}' />" />
				</c:if>
				
				<fieldset class="form-group">
					<label>NIC Number</label> <input type="text"
						value="<c:out value='${dPerson.nic}' />" class="form-control"
						name="nic" required="required" placeholder="Ex :- 197511104554 / 751114554V" pattern="[0-9]{9}[V]|[0-9]{12}">
				</fieldset>

				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<c:out value='${dPerson.name}' />" class="form-control"
						name="name" required="required" placeholder="Ex :- Robert Frank">
				</fieldset>

				<fieldset class="form-group">
					<label>Email Address</label> <input type="email"
						value="<c:out value='${dPerson.email}' />" class="form-control"
						name="email" required="required" placeholder="Ex :- robert@gmail.com" >
				</fieldset>

				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						value="<c:out value='${dPerson.address}' />" class="form-control"
						name="address" required="required" placeholder="Ex :- 34/3,Kings road.">
				</fieldset>
				<fieldset class="form-group">
					<label>Contact No.</label> <input type="text"
						value="<c:out value='${dPerson.contact}' />" class="form-control"
						name="contact" required="required" placeholder="Ex :- 0112533675" pattern="[0][0-9]{9}">
				</fieldset>
				<fieldset class="form-group">
					<label>Availability</label>
					<select name="availability" class="form-control" var="avail">
						<option value="<c:out value='${dPerson.availability}' />"><c:out value='${dPerson.availability}' /></option>
    					<option value="Available">Available</option>
    					<option value="NotAvailable">NotAvailable</option>
					</select>
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>