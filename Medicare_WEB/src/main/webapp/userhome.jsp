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
<title>userhomepage</title>
<style>
.bgimage {
	background-image: url('images/pills.jpg');
	background-color: transparent;
	background-repeat: no-repeat;
	background-size: 1150px 849px;
}
</style>


</head>

<body>

	<div class="m-0">
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container-fluid">
				<a href="userhome.jsp" class="navbar-brand ">Place Order</a>


				<div class="collapse navbar-collapse justify-content-between"
					id="navbarCollapse">
					<div class="navbar-nav">
						<a href="welcome.html" class="nav-item nav-link active">Home</a>


					</div>


					<form class="d-flex" action="./search.jsp" method="post">
						<div class="input-group">
							<input type="text" name="user" class="form-control"
								placeholder=" Search name with initials">
							<button type="submit" class="btn btn-secondary">
								<i class="bi-search"></i>
							</button>
						</div>

					</form>



				</div>


			</div>
		</nav>
	</div>
	<br>


	<div class="container opacity-75 ">
		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto ">
				<div class="card border-0 shadow rounded-3 my-5 ">
					<div
						class="card-body p-4 p-sm-5 bgimage rounded border border-primary">
						<div id="invoice">
							<h5 class="card-title text-center mb-5 fw-light fs-12 ">Request
								Medicine</h5>


							<form method="post" action="./insert-details.jsp">
								<div class="form-floating mb-3">
									<input type="text" name="uname" id="name" class="form-control"
										id="name" required> <label for="floatingname">Enter
										Name With Initials of the patient</label>
								</div>
								<div class="form-floating mb-3">
									<input type="text" name="unic" id="nic" class="form-control"
										id="nic" required> <label for="floatingnic">Enter
										Nic</label>
								</div>
								<div class="form-floating mb-3">
									<input type="text" name="uaddress" id="add"
										class="form-control" id="address" required> <label
										for="floatingaddress">Enter Address</label>
								</div>
								<div class="form-floating mb-3">
									<input type="email" name="uemail" id="email"
										class="form-control" id="email" required> <label
										for="floatingemail">Enter Email</label>
								</div>
								<div class="form-floating mb-3">
									<textarea name="utext" id="details" class="form-control"
										id="text" required></textarea>
									<label for="floatingtext">Medicine Details </label>
								</div>
								<label for="floatingtext"> <p class="text-danger">This is also the confirmation bill, Please keep a copy.</p></label>
								<hr class="my-4">
								


								<div class="d-grid">
									
									<br>
									<button onclick="generatePDF()"
										class="btn btn-primary btn-login " type="submit">Request
										</button>
									<hr class="my-4">
									<p class=" fw-italic text-danger">Warning 1 ! please insert
										the medicine that is written in the prescription.</p>


								</div>




							</form>
							</div>
							
						



					</div>
				</div>
			</div>
		</div>
	</div>




	<footer class="bg-primary text-center text-white">

		<div class="container p-4 pb-0"></div>



		<div class="text-center text-bold p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			©Medicare: <a class="text-white" href="https://mdbootstrap.com/">Medicare.com</a>
		</div>

	</footer>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
	<script src="js/script.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
</body>

</html>