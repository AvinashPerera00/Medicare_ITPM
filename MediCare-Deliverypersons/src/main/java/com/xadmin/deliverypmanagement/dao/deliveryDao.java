package com.xadmin.deliverypmanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xadmin.deliverypmanagement.bean.Delivery;
import com.xadmin.deliverypmanagement.bean.DeliveryPerson;

public class deliveryDao {
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/delivery_db?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "Thamara@123";
	private static final String INSERT_delivery_SQL = "INSERT INTO deliverydetails" + "  (oID,dlPerson,dlPersonID,oDetails,destination,dldate) VALUES "
			+ " (?, ?, ?, ?, ?, ?);";

	private static final String SELECT_delivery_BY_dlID = "SELECT dlID,oID,dlPerson,dlPersonID,oDetails,destination,dldate FROM deliverydetails WHERE dlID =?;";
	
	private static final String SELECT_ALL_deliveries = "SELECT * FROM deliverydetails;";
	private static final String DELETE_delivery_SQL = "DELETE FROM deliverydetails WHERE dlID = ?;";
	private static final String UPDATE_delivery_SQL = "UPDATE deliverydetails SET oID = ?,dlPerson= ?, dlPersonID =?,oDetails = ?,destination = ?,dldate = ? WHERE dlID = ?;";
	
	public deliveryDao() {
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
	
	public void insertDelivery(Delivery dPerson) throws SQLException {
		System.out.println(INSERT_delivery_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_delivery_SQL)) {
			preparedStatement.setInt(1, dPerson.getOid());
			preparedStatement.setString(2, dPerson.getDlperson());
			preparedStatement.setInt(3, dPerson.getDlpersonid());
			preparedStatement.setString(4, dPerson.getOdetails());
			preparedStatement.setString(5, dPerson.getDestination());
			preparedStatement.setString(6, dPerson.getDldate());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public Delivery selectDelivery(int dlid) {
		Delivery delivery = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_delivery_BY_dlID);) {
			preparedStatement.setInt(1, dlid);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int oid = rs.getInt("oID");
				String dlperson = rs.getString("dlPerson");
				int dlpersonid = rs.getInt("dlPersonID");
				String odetails = rs.getString("oDetails");
				String destination = rs.getString("destination");
				String dldate = rs.getString("dldate");
				delivery = new Delivery(dlid, oid, dlperson, dlpersonid, odetails, destination, dldate);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return delivery;
	}

	public List<Delivery> selectAlldeliveries() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Delivery> Deliveries = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_deliveries);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int dlID = rs.getInt("dlID");
				int oID = rs.getInt("oID");
				String dlPerson = rs.getString("dlPerson");
				int dlPersonID = rs.getInt("dlPersonID");
				String oDetails = rs.getString("oDetails");
				String destination = rs.getString("destination");
				String dldate = rs.getString("dldate");
				Deliveries.add(new Delivery(dlID, oID, dlPerson, dlPersonID, oDetails, destination, dldate));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return Deliveries;
	}

	public boolean delete_delivery(int dlid) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_delivery_SQL);) {
			statement.setInt(1, dlid);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean update_delivery(Delivery delivery) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_delivery_SQL);) {
			System.out.println("updated Delivery Person:"+statement);
			statement.setInt(1, delivery.getOid());
			statement.setString(3, delivery.getDlperson());
			statement.setInt(2, delivery.getDlpersonid());
			statement.setString(4, delivery.getOdetails());
			statement.setString(5, delivery.getDestination());
			statement.setString(6, delivery.getDldate());
			statement.setInt(7, delivery.getDlid());

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
