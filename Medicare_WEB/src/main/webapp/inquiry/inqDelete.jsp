<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cusinq", "root", "MyNewPass");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM inq WHERE id="+id);
out.println("<script type='text/javascript'>");
out.println("alert('Data deleted');");
out.println("location='RetriveInq.jsp'");
out.println("</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>