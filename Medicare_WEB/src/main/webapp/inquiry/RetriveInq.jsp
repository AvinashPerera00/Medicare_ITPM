<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("id");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "cusinq";
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
<!-- Html code section -->
<html>
<head>
	<title>inquiry details</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-metro.css">
	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-2020.css">
	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-ios.css">
	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-flat.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	
	<style>
	
	
	</style>
</head>
<body>
<!-- Navigation Bar -->
<div class="w3-container">
<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-large">
  <a href="#" class="w3-bar-item w3-button w3-flat-belize-hole w3-mobile w3-hover-light-blue w3-hoverable" style="text-decoration:none;"><i class="fa fa-bed w3-margin-right"></i>Logo</a>
  <a href="#rooms" class="w3-bar-item w3-button w3-mobile w3-hover-light-blue"  style="text-decoration:none;">Menu</a>
  <a href="#about" class="w3-bar-item w3-button w3-mobile w3-hover-light-blue"  style="text-decoration:none;">About</a>
  <a href="#contact" class="w3-bar-item w3-button w3-mobile w3-hover-light-blue"  style="text-decoration:none;">Contact</a>
  <a href="#contact" class="w3-bar-item w3-button w3-right  w3-mobile w3-hover-light-blue"  style="text-decoration:none;">Home</a>
  <div class="w3-dropdown-hover w3-mobile">
      <a class="w3-btn w3-mobile"  style="text-decoration:none;">Pharmacy navigation</a>
      <div class="w3-dropdown-content w3-card-4">
        <a href="../InventroyControl/updateMain.jsp" class="w3-bar-item w3-btn w3-mobile w3-hover-light-blue  w3-large"  style="text-decoration:none;">Avalible stocks</a>
    	<a href="../Pharmacyhome.html" class="w3-bar-item w3-btn w3-mobile  w3-hover-light-blue  w3-large "  style="text-decoration:none;">Pharmacy home</a>
      </div>
    </div>
</div>
</div>
<br><br>

<div class="w3-container">
	<div class="w3-row">
		<div class="w3-col s4  w3-center">
			<img src="../images/patient1.jpg" style="width:100%; padding:4px;" class="w3-hover-opacity w3-hover-sand w3-border">
  		</div>
  		<div class="w3-col s4  w3-center">
   			<img src="../images/paitent2.jpg" style="width:100%; padding:4px;" class="w3-hover-opacity w3-border">
  		</div>
  		<div class="w3-col s4 w3-center">
   			<img src="../images/paitent3.jpg" style="width:100%; padding:4px;" class="w3-hover-opacity w3-border">
  		</div>
	</div><br>
	
  	
  	
  	<input oninput="w3.filterHTML('#id01', '.item', this.value)" placeholder="Search inquiry using nic...." style="width:100%;" class=" w3-input w3-border w3-bottombar w3-topbar w3-leftbar w3-rightbar w3-border-blue w3-white w3-mobile">
	<div class="w3-responsive">
		<table border="1"  class="w3-table-all" id="id01">
			<tr class="item">
				<td class="w3-ios-blue">Full name</td>
				<td class="w3-ios-blue">Nic</td>
				<td class="w3-ios-blue">Email</td>
				<td class="w3-ios-blue">Phone</td>
				<td class="w3-ios-blue">Discription</td>
				<td class="w3-ios-blue" style="text-align:center;" colspan="3">Action</td>
			</tr>
<%
	try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from inq";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
		<tr class="item">
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("fullname") %></td>
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("nic") %></td>
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("email") %></td>
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("phone") %></td>
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("discription") %></td>
			
			<td class="w3-container w3-metro-light-blue" style="text-align:center;">
				<a href="inqDelete.jsp?id=<%=resultSet.getString("id") %>">
    			<button type="button" class="w3-btn w3-round w3-2020-mosaic-blue" >Delete record</button>
   				</a>
   			</td>
		</tr>
		





	
     
<%
} 
	connection.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
%>
	</table>

<br>


</div>

</body>
</html>