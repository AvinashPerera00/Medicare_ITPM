<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/stock";%>
<%!String user = "root";%>
<%!String psw = "Sathira@2000";%>
<%
String sno = request.getParameter("sno");
String sname=request.getParameter("sname");
String company=request.getParameter("company");
String contact=request.getParameter("contact");
String email=request.getParameter("email");
String address=request.getParameter("address");
if(sno != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update supplier set sno=?,sname=?,company=?,contact=?,email=?,address=? where sno="+sno;
ps = con.prepareStatement(sql);
ps.setString(1, sno);
ps.setString(2, sname);
ps.setString(3, company);
ps.setString(4, contact);
ps.setString(5, email);
ps.setString(6, address);
int i = ps.executeUpdate();
out.println("<script type='text/javascript'>");
out.println("alert('Update succesfull');");
out.println("location='http://localhost:8090/medicine_stock_management/retrievesup.jsp'");
out.println("</script>");
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