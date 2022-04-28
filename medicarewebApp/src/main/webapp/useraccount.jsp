<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>User Details</title>

<style type="text/css">
</style>
</head>
<body>
	<div class="m-0">
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container-fluid">
				<a href="userhome.jsp" class="navbar-brand ">Place Order</a>
				<button type="button" class="navbar-toggler"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-between"
					id="navbarCollapse">
					<div class="navbar-nav">
						<a href="login.jsp" class="nav-item nav-link active">Update
							profile</a>


					</div>
					<form class="d-flex" action="./search.jsp" method="post"></form>

				</div>
			</div>
		</nav>
	</div>
	<br>
	<div class="container">
		<div id="warning" class="form-text text-danger">
			<h3>Your Profile.</h3>
		</div>
		<br>
		<table class="table table-success">
			<c:forEach var="cus" items="${cusDetails}">

				<c:set var="id" value="${cus.id}" />
				<c:set var="name" value="${cus.name}" />
				<c:set var="email" value="${cus.email}" />
				<c:set var="phone" value="${cus.phone}" />
				<c:set var="username" value="${cus.userName}" />
				<c:set var="password" value="${cus.password}" />

				<tbody>
					<tr>
						<td scope="row">Customer ID</td>
						<td>${cus.id}</td>

					</tr>
					<tr>
						<td scope="row">Customer Name</td>
						<td>${cus.name}</td>

					</tr>

					<tr>
						<td scope="row">Customer Email</td>
						<td>${cus.email}</td>

					</tr>

					<tr>
						<td scope="row">Customer Phone</td>
						<td>${cus.phone}</td>

					</tr>

					<tr>
						<td scope="row">Customer User Name</td>
						<td>${cus.userName}</td>

					</tr>

				</tbody>
			</c:forEach>
		</table>

		<c:url value="updatecustomer.jsp" var="cusupdate">
			<c:param name="id" value="${id}" />
			<c:param name="name" value="${name}" />
			<c:param name="email" value="${email}" />
			<c:param name="phone" value="${phone}" />
			<c:param name="uname" value="${username}" />
			<c:param name="pass" value="${password}" />
		</c:url>


		<a href="${cusupdate}">
			<button name="update" class="btn btn-primary">Update My
				Profile</button>
		</a>

		<c:url value="deletecustomer.jsp" var="cusdelete">
			<c:param name="id" value="${id}" />
			<c:param name="name" value="${name}" />
			<c:param name="email" value="${email}" />
			<c:param name="uname" value="${username}" />
			<c:param name="pass" value="${password}" />
		</c:url>

		<a href="${cusdelete}">
			<button name="delete" class="btn btn-danger">Delete My
				Profile</button>
		</a>























	</div>
	<br>

	<footer class="bg-primary text-center text-white">

		<div class="container p-4 pb-0">

			<section class="mb-4"></section>

		</div>



		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			©Medicare: <a class="text-white" href="https://mdbootstrap.com/">Medicare.com</a>
		</div>

	</footer>
</body>
</html>