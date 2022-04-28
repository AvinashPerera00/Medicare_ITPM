<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
	a{
		text-decoration: none;
	}
	.center{
			text-align:center;
		}
</style>
<title>Login</title>
</head>
<body>
<div class=" p-3 mb-2 bg-primary text-black">
	testing
</div><br>

<div class="container ">
	<div class="container col-6 col-md-4 center">
		<h2  class="font-monospace">Staff Login</h2>
	</div>
<section class="container bg-light col-6 col-md-4">
	<form action="../pharmacyloginServlet" method="post">
   		 <div class="mb-3">
            <label for="InputUsername" class="form-label font-monospace ">Enter email address</label>
            <input type="text" name="txtName" class="form-control" id="InputUsername">
            
        </div>
        <div class="mb-3">
            <label for="InputPassword1" class="form-label font-monospace">Enter password</label>
            <input type="password" name="txtpwd" class="form-control" id="InputPassword1">
        </div>
        
        <div class="mb-3 col-sm-7">
        	<button type="submit" class="btn btn-success font-monospace">Submit</button>
        </div>
        <div id="emailHelp" class="text-danger font-monospace">If you forget the username or password please contact the pharmacy admin.</div>
       
	</form>
	
</section>
</div>

</body>
</html>