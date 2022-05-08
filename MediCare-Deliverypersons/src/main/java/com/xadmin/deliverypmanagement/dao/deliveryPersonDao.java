package com.xadmin.deliverypmanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xadmin.deliverypmanagement.bean.DeliveryPerson;


public class deliveryPersonDao {
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/delivery_db?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "Thamara@123";
	private static final String INSERT_dPerson_SQL = "INSERT INTO deliverypersons" + "  (dNIC, dName, dEmail, dAddress, dContact, availability) VALUES "
			+ " (?, ?, ?, ?, ?, ?);";

	private static final String SELECT_dPerson_BY_dID = "SELECT dID,dNIC,dName,dEmail,dAddress,dContact,availability FROM deliverypersons WHERE dID =?;";
	private static final String SELECT_Available_dPersons = "SELECT dID,dNIC,dName,dEmail,dAddress,dContact,availability FROM deliverypersons WHERE availability = 'Available'";
	//private static final String SELECT_dPerson_BY_dNIC = "select dID,dNIC,dName,dEmail,dAddress,dContact from deliverypersons where dNIC =?";
	//private static final String SELECT_dPerson_BY_dContact = "select dID,dNIC,dName,dEmail,dAddress,dContact from deliverypersons where dContact =?";
	private static final String SELECT_ALL_dPerson = "SELECT * FROM deliverypersons;";
	private static final String DELETE_dPerson_SQL = "DELETE FROM deliverypersons WHERE dID = ?;";
	private static final String UPDATE_dPerson_SQL = "UPDATE deliverypersons SET dNIC = ?,dName= ?, dEmail =?,dAddress = ?,dContact = ?,availability = ? WHERE dID = ?;";
	
	public deliveryPersonDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	public void insertdPerson(DeliveryPerson dPerson) throws SQLException {
		System.out.println(INSERT_dPerson_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_dPerson_SQL)) {
			preparedStatement.setString(1, dPerson.getNic());
			preparedStatement.setString(2, dPerson.getName());
			preparedStatement.setString(3, dPerson.getEmail());
			preparedStatement.setString(4, dPerson.getAddress());
			preparedStatement.setString(5, dPerson.getContact());
			preparedStatement.setString(6, dPerson.getAvailability());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public DeliveryPerson selectdPerson(int id) {
		DeliveryPerson dPerson = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_dPerson_BY_dID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String nic = rs.getString("dNIC");
				String name = rs.getString("dName");
				String email = rs.getString("dEmail");
				String address = rs.getString("dAddress");
				String contact = rs.getString("dContact");
				String availability = rs.getString("availability");
				dPerson = new DeliveryPerson(id, nic, name, email, address, contact, availability);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return dPerson;
	}
	
	/*public DeliveryPerson selectdPerson(String nic) {
		DeliveryPerson dPerson = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_dPerson_BY_dNIC);) {
			preparedStatement.setString(1, nic);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String did = rs.getString("did");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String address = rs.getString("address");
				String contact = rs.getString("contact");
				dPerson = new DeliveryPerson(did, nic, name, email, address, contact);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return dPerson;
	}*/

	public List<DeliveryPerson> selectAlldPersons() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<DeliveryPerson> dPersons = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_dPerson);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("dID");
				String nic = rs.getString("dNIC");
				String name = rs.getString("dName");
				String email = rs.getString("dEmail");
				String address = rs.getString("dAddress");
				String contact = rs.getString("dContact");
				String availability = rs.getString("availability");
				dPersons.add(new DeliveryPerson(id, nic, name, email, address, contact, availability));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return dPersons;
	}
	
	public List<DeliveryPerson> selectAvailable_dPersons() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<DeliveryPerson> available_dPersons = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_Available_dPersons);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("dID");
				String nic = rs.getString("dNIC");
				String name = rs.getString("dName");
				String email = rs.getString("dEmail");
				String address = rs.getString("dAddress");
				String contact = rs.getString("dContact");
				String availability = rs.getString("availability");
				available_dPersons.add(new DeliveryPerson(id, nic, name, email, address, contact, availability));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return available_dPersons;
	}

	public boolean delete_dPerson(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_dPerson_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean update_dPerson(DeliveryPerson dPerson) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_dPerson_SQL);) {
			System.out.println("updated Delivery Person:"+statement);
			statement.setString(1, dPerson.getNic());
			statement.setString(2, dPerson.getName());
			statement.setString(3, dPerson.getEmail());
			statement.setString(4, dPerson.getAddress());
			statement.setString(5, dPerson.getContact());
			statement.setString(6, dPerson.getAvailability());
			statement.setInt(7, dPerson.getId());

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
		

}
