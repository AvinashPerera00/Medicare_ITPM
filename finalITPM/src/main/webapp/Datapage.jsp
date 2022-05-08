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
String database = "pharmacy";
String userid = "root";
String password = "mathssin90";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.mySlides {display:none;}
</style>
<style>
.w3-tangerine {
  font-family: "Tangerine", serif;
}

</style>

<body>

<div class="w3-container">
<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-large">
  <a href="#" class="w3-bar-item w3-button w3-blue w3-mobile w3-hover-blue"><i class="fa fa-bed w3-margin-right"></i>Logo</a>
  <a href="#rooms" class="w3-bar-item w3-button w3-mobile  w3-hover-blue">Services</a>
  <a href="#about" class="w3-bar-item w3-button w3-mobile  w3-hover-blue">About</a>
  <a href="#contact" class="w3-bar-item w3-button w3-mobile  w3-hover-blue">Contact</a>
  
  <a href="#contact" class="w3-bar-item w3-button w3-right w3-white w3-mobile  w3-hover-blue">Home</a>
</div>
<div class="w3-bar w3-light-grey">
  <h1><center>ORDERS</center></h1><br>
 
  
</div>
<div class="w3-container">

<p>
<input oninput="w3.filterHTML('#id01', '.item', this.value)" placeholder="Search for names..">
</p>


<table border="1" class="w3-table w3-blue" id="id01">
<tr>
<th>id</th>
<th>first name</th>
<th>last name</th>
<th>date</th>
<th>medicines</th>
<th>email</th>
<th>phone</th>
<th>birth</th>
<th>doctor</th>






<td>Action</td>

</tr >
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from patients";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr class="item">
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("lastname") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("medicines") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("birth") %></td>
<td><%=resultSet.getString("doctor") %></td>



<td><a href="delete.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="w3-button w3-white w3-border">Delete</button></a></td>
<td><a href="update.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="w3-button w3-white w3-border">Update</button></a></td>
<td><a href="emailsender.html?id=<%=resultSet.getString("id") %>"><button type="button" class="w3-button w3-white w3-border">Confirm</button></a></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<div class="w3-container" id="contact">
    <h2>Contact</h2>
    <p>If you have any questions, do not hesitate to ask them.</p>
    <i class="fa fa-map-marker w3-text-blue" style="width:30px"></i>Moratuwa,1040,Sri Lanka<br>
    <i class="fa fa-phone w3-text-blue" style="width:30px"></i> Phone: 011-1234522<br>
    <i class="fa fa-envelope w3-text-blue" style="width:30px"> </i> Email: help@mordiv.com<br>
    </div>
 
 <!-- Footer -->
<footer class="w3-padding-32 w3-blue w3-center w3-margin-top">
  <h5>Find Us On</h5>
  <div class="w3-xlarge w3-padding-16">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank" class="w3-hover-text-green">Avia</a></p>
</footer>

</div>
</div>
<script src="https://www.w3schools.com/lib/w3.js"></script>
</body>

</html>