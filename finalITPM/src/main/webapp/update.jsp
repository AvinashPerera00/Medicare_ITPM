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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from patients where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
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

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head><meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
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
  <h1><center>Update Details</center></h1>
</div>

<div class="w3-bar w3-light-grey">
</div>
<form method="post" action="updateprocess.jsp" class="w3-container">
<input type="hidden" class="w3-input" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" class="w3-input" name="id" value="<%=resultSet.getString("id") %>">
<br>
First name:<br>
<input type="text" class="w3-input" name="firstname" value="<%=resultSet.getString("firstname") %>" required>
<br>
Last name:<br>
<input type="text" class="w3-input" name="lastname" value="<%=resultSet.getString("lastname") %>" required>
<br>
Date:<br>
<input type="text" class="w3-input" name="date" value="<%=resultSet.getString("date") %>" required>
<br>
Medicines:<br>
<input type="text" class="w3-input" name="medicines" value="<%=resultSet.getString("medicines") %>" required>
<br>
E-mail:<br>
<input type="text" class="w3-input" name="email" value="<%=resultSet.getString("email") %>" required>
<br>
Phone:<br>
<input type="text" class="w3-input" name="phone" value="<%=resultSet.getString("phone") %>" required>
<br>
Birth Day:<br>
<input type="text" class="w3-input" name="birth" value="<%=resultSet.getString("birth") %>" required>
<br>
Name of the Doctor:<br>
<input type="text" class="w3-input" name="doctor" value="<%=resultSet.getString("doctor") %>" required>
<br>

<br><br>
<input type="submit" class="w3-btn w3-white w3-border w3-border-blue w3-round-large" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</body>
</html>