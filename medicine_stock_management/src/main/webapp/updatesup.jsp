<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "stock";
String userid = "root";
String password = "Sathira@2000";
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
String sql ="select * from supplier where sno="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<div class="w3-top"  >
  <div class="w3-row w3-padding w3-white"  >
    <div class="w3-col s3" >
      <a href="http://localhost:8090/medicine_stock_management/stockhome.html" class="w3-button w3-block w3-blue" >MEDI CARE</a>
    </div>
    <div class="w3-col s3" >
      <a href="http://localhost:8090/medicine_stock_management/retrieve.jsp" class="w3-button w3-block w3-blue" >Available Products</a>
    </div>
    <div class="w3-col s3">
      <a href="http://localhost:8090/medicine_stock_management/addproducts.html" class="w3-button w3-block w3-blue" >Add Products</a>
    </div> 
    <div class="w3-col s3">
      <a href="#viewmapp" class="w3-button w3-block w3-blue" >Suppliers</a>
    </div>
  </div>
</div>
<br><br>

<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
 ;
}

div[id=form] {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 250px;
  
  
}
</style>

<head>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<br>
<div id="form" class="w3-container w3-padding-32">
 <h3 align="center">Update Supplier Details</h3>
<form method="post" action="updatesupprocess.jsp" class="w3-container">
<input type="hidden" name="sno" value="<%=resultSet.getString("sno") %>" class="w3-input">
<input type="text" name="sno" value="<%=resultSet.getString("sno") %>" class="w3-input">
<br>
Supplier Name:<br>
<input type="text" name="sname" value="<%=resultSet.getString("sname") %>" class="w3-input">
<br>
Company:<br>
<input type="text" name="company" value="<%=resultSet.getString("company") %>" class="w3-input">
<br>
Contact:<br>
<input type="text" name="contact" value="<%=resultSet.getString("contact") %>" class="w3-input">
<br>
Email:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>" class="w3-input">
<br>
Address:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>" class="w3-input">
<br>
<input type="submit" value="Update" class="w3-button w3-blue w3-section">
</form>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

<footer class="w3-padding-32 w3-blue w3-center w3-margin-top">
  <p>© MEDI CARE</p>
</footer>
</body>
</html>l>