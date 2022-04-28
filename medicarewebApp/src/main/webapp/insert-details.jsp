<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String mname=request.getParameter("uname");
String mnic=request.getParameter("unic");
String maddress=request.getParameter("uaddress");
String memail=request.getParameter("uemail");
String mtext=request.getParameter("utext");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cusrequest", "root", "MyNewPass");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into req(name,nic,address,email,txt)values('"+mname+"','"+mnic+"','"+maddress+"','"+memail+"','"+mtext+"')");
out.println("<script type='text/javascript'>");
out.println("alert('Inserted succesfully');");
out.println("location='userhome.jsp'");
out.println("</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</html>