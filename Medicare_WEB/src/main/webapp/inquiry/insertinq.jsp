<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String fullname=request.getParameter("fullname");
String nic=request.getParameter("nic");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String tarea=request.getParameter("tarea");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cusinq", "root", "MyNewPass");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into inq(fullname,nic,email,phone,discription)values('"+fullname+"','"+nic+"','"+email+"','"+phone+"','"+tarea+"')");
out.println("<script type='text/javascript'>");
out.println("alert('Insert succesfull');");
out.println("location='cusInquiry.html'");
out.println("</script>");
}


catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>