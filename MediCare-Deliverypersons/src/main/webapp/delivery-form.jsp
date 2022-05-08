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
				<c:if test="${delivery != null}">
					<form action="dupdate" method="post">
				</c:if>
				<c:if test="${delivery == null}">
					<form action="dinsert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${delivery != null}">
            			Edit Delivery
            		</c:if>
						<c:if test="${delivery == null}">
            			Add New Delivery 
            		</c:if>
					</h2>
				</caption>

				<c:if test="${delivery != null}">
					<input type="hidden" name="dlid" value="<c:out value='${delivery.dlid}' />" />
				</c:if>
				
				<fieldset class="form-group">
					<label>Order ID</label> <input type="text"
						value="<c:out value='${delivery.oid}' />" class="form-control"
						name="oid" required="required" placeholder="Ex :- 1" pattern="[0-9]+">
				</fieldset>

				<fieldset class="form-group">
					<label>Delivery person's name</label> <input type="text"
						value="<c:out value='${delivery.dlperson}' />" class="form-control"
						name="dlperson" required="required" placeholder="Ex :- john" >
				</fieldset>

				<fieldset class="form-group">
					<label>Delivery person ID</label> <input type="text"
						value="<c:out value='${delivery.dlpersonid}' />" class="form-control"
						name="dlpersonid" required="required" placeholder="Ex :- 1" pattern="[0-9]+">
				</fieldset>

				<fieldset class="form-group">
					<label>Order Details</label> <input type="text"
						value="<c:out value='${delivery.odetails}' />" class="form-control"
						name="odetails" required="required" placeholder="Ex :- 2 cards of penadol">
				</fieldset>
				<fieldset class="form-group">
					<label>Destination</label> <input type="text"
						value="<c:out value='${delivery.destination}' />" class="form-control"
						name="destination" required="required" placeholder="Ex :- 23/3,Gampaha.">
				</fieldset>
				<fieldset class="form-group">
					<label>Delivery Date</label> <input type="date"
						value="<c:out value='${delivery.dldate}' />" class="form-control"
						name="dldate" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>