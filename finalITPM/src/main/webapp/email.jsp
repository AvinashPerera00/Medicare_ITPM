<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String to=request.getParameter("to");
String subject=request.getParameter("subject");
String message=request.getParameter("message");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mail", "root", "mathssin90");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into emails(to,subject,message)values('"+to+"','"+subject+"','"+message+"')");
out.println("<script type='text/javascript'>");
out.println("alert('Inserted succesfully');");
out.println("location='emailsender.html'");
out.println("</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>