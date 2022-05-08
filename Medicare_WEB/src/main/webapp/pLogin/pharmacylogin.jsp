<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Login</title>
<style type="text/css">
.center {
	text-align: center;
}

a {
	text-decoration: none;
}

h1 {
	position: relative;
	padding: 0;
	margin: 0;
	font-family: "Raleway", sans-serif;
	font-weight: 300;
	font-size: 40px;
	color: #080808;
	-webkit-transition: all 0.4s ease 0s;
	-o-transition: all 0.4s ease 0s;
	transition: all 0.4s ease 0s;
}

h1 span {
	display: block;
	font-size: 0.5em;
	line-height: 1.3;
}

h1 em {
	font-style: normal;
	font-weight: 600;
}

.two h1 {
	text-transform: capitalize;
	font-family: DejaVu Sans Mono, monospace;
}

.two h1:before {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 60px;
	height: 2px;
	content: "";
	background-color: #c50000;
}

.two h1 span {
	font-size: 13px;
	font-weight: 500;
	text-transform: uppercase;
	letter-spacing: 4px;
	line-height: 3em;
	padding-left: 0.25em;
	color: rgba(0, 0, 0, 0.4);
	padding-bottom: 10px;
}
</style>

<title>Login</title>
</head>
<body>



<header class=" p-3 mb-2 bg-primary text-white medi">
		<div class="two">
			<h1>
				Medicare Pharmacy <span>Service from the heart</span>
			</h1>
		</div>


	</header>
	<br>
	<br>
	<div class="container ">
		<div class="container opacity-75">
			<div class="row">
				<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
					<div class="card border-0 shadow rounded-3 my-5">
						<div class="card-body p-4 p-sm-5">
							<h5 class="card-title text-center mb-5 fw-light fs-12 ">Pharmacy
								Admin Log In</h5>

							<!--User Login form -->
							<form action="../pharmacyloginServlet" method="post">
								<div class="form-floating mb-3">
									<input type="text" class="form-control" id="floatingInput"
										name="txtName" placeholder="Enter your username" required>
									<label for="floatingInput">User Name</label>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control"
										id="floatingPassword" name="txtpwd"
										placeholder="Enter your password" required> <label
										for="floatingPassword">Password</label>
								</div>



								<div class="d-grid">
									<button class="btn btn-primary btn-login  fw-bold"
										type="submit">Log In</button>
								</div>
								<hr class="my-4">
								<div class="d-grid mb-2 ">
									<a href="#" class="text-danger test" onclick="fogotPassword()">Forgot
										password?</a>
								</div>

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
	
<script>
	function fogotPassword() {
  alert("Send us a  email electrogrid@gmail.com by typing forget password_<your username> or call us +947776656 we will send you a rest link.");
}</script>




</body>
</html>