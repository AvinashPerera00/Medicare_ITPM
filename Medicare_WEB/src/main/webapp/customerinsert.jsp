<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>register</title>

<style type="text/css">
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
   font-family:DejaVu Sans Mono, monospace;
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
</head>
<body>
<header class=" p-3 mb-2 bg-primary text-white medi">
	<div class="two">
  <h1>Medicare Pharmacy
    <span>Service from the heart</span>
  </h1>
</div>


</header><br>
<div class="container ">
		<div class="container col-4 col-md-4">
 <div id="warning" class="form-text text-danger">
  	<h3>Register Here.</h3>
  </div><br>
</div>
	
	<section class="container bg-light col-6 col-md-4">
	<form action="insert" method="post">
	
	<div class="mb-2">
		<label for="InputName" class="form-label">Enter Name</label>
		<input type="text" name="name" class="form-control" id="InputName" required><br>
	</div>	
	<div class="mb-2">
		<label for="InputEmail" class="form-label">Enter Email Address</label>
		<input type="text" name="email" class="form-control" id="InputEmail" required><br>
	</div>	
	<div class="mb-2">
		<label for="InputPhone" class="form-label">Enter Phone Number</label>
		<input type="text" name="phone" class="form-control" id="InputPhone" required><br>
	</div>	
	<div class="mb-2">	
		<label for="InputUname" class="form-label">Enter Username</label>
		<input type="text" name="uid" class="form-control" id="InputUname" required><br>
	</div>	
	<div class="mb-2">	
		<label for="InputPass" class="form-label">Enter Password</label>
		<input type="password" name="psw" class="form-control" id="InputPass" required><br>
	</div>	
	<div class="mb-2">
		 <button type="submit" class="btn btn-success">Register</button>
	</div>	
	<a href="index.jsp" class="link-secondary">Login</a>
	</form>
	
	
	</section>

</div>

<br>

  <footer class="bg-primary text-center text-white">
  
  <div class="container p-4 pb-0">
    
    <section class="mb-4">
      
      
    </section>
   
  </div>
 

 
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    ©Medicare:
    <a class="text-white" href="https://mdbootstrap.com/">Medicare.com</a>
  </div>
 
</footer>
</body>
</html>