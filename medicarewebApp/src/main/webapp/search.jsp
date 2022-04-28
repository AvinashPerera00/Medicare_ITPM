
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String user = request.getParameter("user");
	String id = request.getParameter("id");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "cusrequest";
	String userid = "root";
	String password = "MyNewPass";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
<br><br><br>
<div class="container">
<table  class="table table-success">
<tbody>
		<tr>
			<th scope="col">Name</th>
			<th scope="col">Nic</th>
			<th scope="col">Address</th>
			<th scope="col">Email</th>
			<th scope="col">Details</th>
		
		</tr>
		<%
			try{
				
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				
				
				String sqlStr = "select * from req where name='"+user+"'";
				ResultSet rs = statement.executeQuery(sqlStr);
				
				while(rs.next()){
				%>
				<tr>
				
				<td><%=rs.getString("name") %></td>
				<td><%=rs.getString("nic") %></td>
				<td><%=rs.getString("address") %></td>
				<td><%=rs.getString("email") %></td>
				<td><%=rs.getString("txt") %></td>
				
				
				</tr>
				
			<% }	
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
		
		%>
	
		
 </tbody>
</table>
<br><br>
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

