<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/pharmacy";%>
<%!String user = "root";%>
<%!String psw = "mathssin90";%>


<%

String id = request.getParameter("id");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String date=request.getParameter("date");
String medicines=request.getParameter("medicines");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String birth=request.getParameter("birth");
String doctor=request.getParameter("doctor");


if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update patients set id=?,firstname=?,lastname=?,date=?,medicines=?,email=?,phone=?,birth=?,doctor=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, firstname);
ps.setString(3, lastname);
ps.setString(4, date);
ps.setString(5, medicines);
ps.setString(6, email);
ps.setString(7, phone);
ps.setString(8, birth);
ps.setString(9, doctor);



int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
