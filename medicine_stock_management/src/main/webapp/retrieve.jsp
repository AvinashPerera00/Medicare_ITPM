<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
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
<!DOCTYPE html>
<html>
<head>
<title>Available Products</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://www.w3schools.com/lib/w3.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
table, td, th {  
  border: 5px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 75%;
}

th, td {
  padding: 10px;
  background-color: #f2f2f2;
    
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body{
  background: #f2f2f2;
  font-family: 'Open Sans', sans-serif;
}


</style>
</head>
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
      <a href="http://localhost:8090/medicine_stock_management/suppliers.html" class="w3-button w3-block w3-blue" >Suppliers</a>
    </div>
  </div>
</div>
<br><br>


<div  class="w3-container w3-padding-32"   >
    <h3 align="center">Available Products</h3>
    
<div align="center">
<form action="stockreport.jsp">
<button class="w3-button w3-blue w3-section" >Print Stock Report</button>
</form>
</div>
<p align="center">
<input oninput="w3.filterHTML('#id01', '.item', this.value)" placeholder="Search for Product no....">
</p>   
<br><br>
<div align="center">

<table border="1" id="id01">
<tr>
<td><b>Product no</b></td>
<td><b>Product Name</b></td>
<td><b>MFD</b></td>
<td><b>EXD</b></td>
<td><b>Units</b></td>
<td><b>Unit Price</b></td>
<td><b>Delete</b></td>
<td><b>Update</b></td>
</tr>
</div>
</div>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from mstock";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr class="item">
<td><%=resultSet.getString("pno") %></td>
<td><%=resultSet.getString("pname") %></td>
<td><%=resultSet.getString("mfd") %></td>
<td><%=resultSet.getString("exd") %></td>
<td><%=resultSet.getString("units") %></td>
<td><%=resultSet.getString("unitprice") %></td>
<td><a href="delete.jsp?pno=<%=resultSet.getString("pno")%>"><button class="w3-button w3-white w3-border w3-border-red w3-round-large">Delete</button></a></td>
<td><a href="update.jsp?id=<%=resultSet.getString("pno")%>"><button class="w3-button w3-white w3-border w3-border-blue w3-round-large">Update</button></a> </td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
<footer class="w3-padding-32 w3-blue w3-center w3-margin-top">
  <p>© MEDI CARE</p>
</footer>
</body>
</html>