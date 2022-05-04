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
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Report</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="pdf.css" />
    <script src="stockpdf.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
<style type="text/css">
.container {
      padding: 16px 0;
      text-align:left;
      }
</style>
<style> 
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: #2196f3;
  color: white;
}
textarea[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: none;
  color: black;
}
input[type=date] {
  width: 100%;
  width: 150px;
  height: 50px;
  padding: 8px 10px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: none;
  color: black;
}

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
    <div class="container d-flex justify-content-center mt-50 mb-50">
        <div class="row">
            <div class="col-md-12 text-right mb-3">
                <button class="btn btn-primary" id="download"> download pdf</button>
            </div>
            <div class="col-md-12">
                <div class="card" id="invoice">
                    <div class="card-header bg-transparent header-elements-inline">
                        <h4 class="card-title text-primary">Stock Report</h4>
                    </div>
                    <br>
                    <div align="center">

<table border="1" id="id01">
<tr>
<td><b>Product no</b></td>
<td><b>Product Name</b></td>
<td><b>MFD</b></td>
<td><b>EXD</b></td>
<td><b>Units</b></td>
<td><b>Unit Price</b></td>

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
<tr>
<td><%=resultSet.getString("pno") %></td>
<td><%=resultSet.getString("pname") %></td>
<td><%=resultSet.getString("mfd") %></td>
<td><%=resultSet.getString("exd") %></td>
<td><%=resultSet.getString("units") %></td>
<td><%=resultSet.getString("unitprice") %></td>

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
                    <div class="card-footer"> <span class="text-muted">This is a genarated report</span> </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html> 