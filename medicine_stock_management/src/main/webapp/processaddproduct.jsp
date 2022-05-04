<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String pno=request.getParameter("pno");
String pname=request.getParameter("pname");
String mfd=request.getParameter("mfd");
String exd=request.getParameter("exd");
String units=request.getParameter("units");
String unitprice=request.getParameter("unitprice");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/stock", "root", "Sathira@2000");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into mstock(pno,pname,mfd,exd,units,unitprice)values('"+pno+"','"+pname+"','"+mfd+"','"+exd+"','"+units+"','"+unitprice+"')");
           out.println("<script type='text/javascript'>");
           out.println("alert('Data inserted Successfully!');");
           out.println("location='http://localhost:8090/medicine_stock_management/addproducts.html'");
           out.println("</script>");
           out.println("Data inserted Successfully!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>