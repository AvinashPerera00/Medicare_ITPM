<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<title>Login</title>
<style type="text/css">
.center {
	text-align: center;
}

a {
	text-decoration: none;
}
</style>
<!-- Headeer -->
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
						<a href="welcome.html" class="nav-item nav-link active">Home</a>


					</div>
					<form class="d-flex" action="./search.jsp" method="post"></form>

				</div>
			</div>
		</nav>
	</div>
	<br>
	<div class="container ">
		<div class="container opacity-75">
			<div class="row">
				<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
					<div class="card border-0 shadow rounded-3 my-5">
						<div class="card-body p-4 p-sm-5">
							<h5 class="card-title text-center mb-5 fw-light fs-12 ">Confirm
								Log In</h5>

							<!--User Login form -->
							<form action="login" method="post">
								<div class="form-floating mb-3">
									<input type="text" class="form-control" id="floatingInput"
										name="username" placeholder="Enter your username" required>
									<label for="floatingInput">User Name</label>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control"
										id="floatingPassword" name="password"
										placeholder="Enter your password" required> <label
										for="floatingPassword">Password</label>
								</div>



								<div class="d-grid">
									<button class="btn btn-primary btn-login  fw-bold"
										type="submit">Log In</button>
								</div>
								<hr class="my-4">
								

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>



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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>