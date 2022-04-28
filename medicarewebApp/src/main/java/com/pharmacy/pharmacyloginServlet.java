package com.pharmacy;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/pharmacyloginServlet")
public class pharmacyloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try {
				PrintWriter out=response.getWriter();
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medilog","root","MyNewPass");
				String n=request.getParameter("txtName");
				String p=request.getParameter("txtpwd");
				PreparedStatement ps=con.prepareStatement("select uname from pharmacylogin where uname=? and upass=?");
				ps.setString(1, n);
				ps.setString(2, p);
				ResultSet rs=ps.executeQuery();
				if(rs.next()) {
					RequestDispatcher rd= request.getRequestDispatcher("phome.html");
					rd.forward(request, response);
				}else {
					out.println("<font color=red size=18>Login failed!!!<br>");
					out.println("<a href=pLogin/pharmacylogin.jsp>Try again!!!</a>");
				}
				
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}

}
