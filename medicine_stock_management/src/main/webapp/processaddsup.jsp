<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String sno=request.getParameter("sno");
String sname=request.getParameter("sname");
String company=request.getParameter("company");
String contact=request.getParameter("contact");
String email=request.getParameter("email");
String address=request.getParameter("address");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/stock", "root", "Sathira@2000");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into supplier(sno,sname,company,contact,email,address)values('"+sno+"','"+sname+"','"+company+"','"+contact+"','"+email+"','"+address+"')");
           out.println("<script type='text/javascript'>");
           out.println("alert('Data inserted Successfully!');");
           out.println("location='http://localhost:8090/medicine_stock_management/suppliers.html'");
           out.println("</script>");
           out.println("Data inserted Successfully!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>
 