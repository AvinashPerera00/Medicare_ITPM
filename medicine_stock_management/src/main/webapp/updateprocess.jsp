<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/stock";%>
<%!String user = "root";%>
<%!String psw = "Sathira@2000";%>
<%
String pno = request.getParameter("pno");
String pname=request.getParameter("pname");
String mfd=request.getParameter("mfd");
String exd=request.getParameter("exd");
String units=request.getParameter("units");
String unitprice=request.getParameter("unitprice");
if(pno != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update mstock set pno=?,pname=?,mfd=?,exd=?,units=?,unitprice=? where pno="+pno;
ps = con.prepareStatement(sql);
ps.setString(1, pno);
ps.setString(2, pname);
ps.setString(3, mfd);
ps.setString(4, exd);
ps.setString(5, units);
ps.setString(6, unitprice);
int i = ps.executeUpdate();
out.println("<script type='text/javascript'>");
out.println("alert('Insert succesfull');");
out.println("location='http://localhost:8090/medicine_stock_management/retrieve.jsp'");
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