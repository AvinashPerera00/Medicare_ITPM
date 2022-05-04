<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String sno=request.getParameter("sno");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/stock", "root", "Sathira@2000");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM supplier WHERE sno="+sno);
out.println("<script type='text/javascript'>");
out.println("alert('Data Deleted Successfully!');");
out.println("location='http://localhost:8090/medicine_stock_management/retrievesup.jsp'");
out.println("</script>");
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>