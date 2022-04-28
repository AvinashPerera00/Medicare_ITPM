<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<title>Delete confirmation</title>
</head>
<body>
<div class="m-0">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a href="userhome.jsp" class="navbar-brand ">Place Order</a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="login.jsp" class="nav-item nav-link active">Update profile</a>
                    
                    
                </div>
                <form class="d-flex" action="./search.jsp" method="post">
                </form>
               
            </div>
        </div>
    </nav>
</div>
<br>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>

	<div class="container">
	<div id="warning" class="form-text text-danger">
  	<h3>Delete Profile.</h3>
  </div><br>

	<form action="delete" method="post">
	<table class="table table-success">
		<tr>
			<td scope="row">Customer ID</td>
			<td><input type="text" class="form-control form-control-sm" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td scope="row">Name</td>
			<td><input type="text" class="form-control form-control-sm" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
		<td scope="row">Email</td>
		<td><input type="text" class="form-control form-control-sm" name="email" value="<%= email %>" readonly></td>
	</tr>
	<tr>
		<td scope="row">Phone number</td>
		<td><input type="text" class="form-control form-control-sm" name="phone" value="<%= phone %>" readonly></td>
	</tr>
	<tr>
		<td scope="row">User name</td>
		<td><input type="text" class="form-control form-control-sm" name="uname" value="<%= userName %>" readonly></td>
	</tr>
	<tbody>		
	</table>
	<br>
	<button class="btn btn-danger">Delete My Account</button>
	</form>
	<br>
	</div>
	
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