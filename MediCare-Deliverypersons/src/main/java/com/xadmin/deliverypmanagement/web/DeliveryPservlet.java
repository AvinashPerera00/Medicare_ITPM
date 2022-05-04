package com.xadmin.deliverypmanagement.web;


import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xadmin.deliverypmanagement.bean.DeliveryPerson;
import com.xadmin.deliverypmanagement.dao.deliveryPersonDao;


/**
 * Servlet implementation class DeliveryPservlet
 */
@WebServlet("/")
public class DeliveryPservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private deliveryPersonDao DeliveryPersonDao;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() throws ServletException {
		DeliveryPersonDao =new deliveryPersonDao();
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
	try {
		switch(action)
			{
				case "/new":
					showNewForm(request, response);
					break;
				case "/showavailable":
					list_available_dPerson(request, response);
					break;
				case "/insert":
					insert_dPerson(request, response);
					break;
				case "/delete":
					delete_dPerson(request, response);
					break;
				case "/edit":
					showEditForm(request, response);
					break;
				case "/update":
					update_dPerson(request, response);
					break;
			
				default:
					list_dPerson(request, response);
					break;
		
	}
	
	}catch (SQLException ex) {
		throw new ServletException(ex);	
	}
	
	}

	private void list_dPerson(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<DeliveryPerson> list_dPerson = DeliveryPersonDao.selectAlldPersons();
		request.setAttribute("list_dPerson", list_dPerson);
		RequestDispatcher dispatcher = request.getRequestDispatcher("dPerson-list.jsp");
		dispatcher.forward(request, response);
	}
	
	private void list_available_dPerson(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<DeliveryPerson> list_available_dPerson = DeliveryPersonDao.selectAvailable_dPersons();
		request.setAttribute("list_available_dPerson", list_available_dPerson);
		RequestDispatcher dispatcher = request.getRequestDispatcher("available_dPerson-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher =request.getRequestDispatcher("dPerson-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		DeliveryPerson existingdPerson = DeliveryPersonDao.selectdPerson(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("dPerson-form.jsp");
		request.setAttribute("dPerson", existingdPerson);
		dispatcher.forward(request, response);

	}

	private void insert_dPerson(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String nic = request.getParameter("nic");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		String availability = request.getParameter("availability");
		DeliveryPerson newdPerson = new DeliveryPerson(nic, name, email, address, contact, availability);
		DeliveryPersonDao.insertdPerson(newdPerson);
		response.sendRedirect("list");
	}

	private void update_dPerson(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String nic = request.getParameter("nic");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		String availability = request.getParameter("availability");

		DeliveryPerson dPerson = new DeliveryPerson(id, nic, name, email, address, contact, availability);
		DeliveryPersonDao.update_dPerson(dPerson);
		response.sendRedirect("list");
	}

	private void delete_dPerson(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		DeliveryPersonDao.delete_dPerson(id);
		response.sendRedirect("list");

	}

}
