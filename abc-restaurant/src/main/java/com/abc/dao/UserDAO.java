package com.abc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.abc.model.User;

public class UserDAO {

	// Add a new User
	public void addUser(User user) {
		String query = "INSERT INTO users (name, username, email, address, phone, role, password) VALUES (?, ?, ?, ?, ?, ?, ?)";

		try (Connection connection = DBConnectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(query)) {

			statement.setString(1, user.getName());
			statement.setString(2, user.getUsername());
			statement.setString(3, user.getEmail());
			statement.setString(4, user.getAddress());
			statement.setString(5, user.getPhone());
			statement.setString(6, user.getRole());
			statement.setString(7, user.getPassword());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Retrieve all Users
	public List<User> getAllUsers() {
		List<User> users = new ArrayList<>();
		String query = "SELECT * FROM users";

		try (Connection connection = DBConnectionFactory.getConnection();
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery(query)) {

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				String username = resultSet.getString("username");
				String email = resultSet.getString("email");
				String address = resultSet.getString("address");
				String phone = resultSet.getString("phone");
				String role = resultSet.getString("role");
				String password = resultSet.getString("password");

				users.add(new User(id, name, username, email, address, phone, role, password));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}

	// Update an existing User
	public void updateUser(User user) {
		String query = "UPDATE users SET name = ?, username = ?, email = ?, address = ?, phone = ?, role = ?, password = ? WHERE id = ?";

		try (Connection connection = DBConnectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(query)) {

			statement.setString(1, user.getName());
			statement.setString(2, user.getUsername());
			statement.setString(3, user.getEmail());
			statement.setString(4, user.getAddress());
			statement.setString(5, user.getPhone());
			statement.setString(6, user.getRole());
			statement.setString(7, user.getPassword());
			statement.setInt(8, user.getId());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Delete a User by id
	public void deleteUser(int id) {
		String query = "DELETE FROM users WHERE id = ?";

		try (Connection connection = DBConnectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(query)) {

			statement.setInt(1, id);
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Retrieve a User by id
	public User getUserById(int id) {
		String query = "SELECT * FROM users WHERE id = ?";
		User user = null;

		try (Connection connection = DBConnectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(query)) {

			statement.setInt(1, id);
			try (ResultSet resultSet = statement.executeQuery()) {
				if (resultSet.next()) {
					String name = resultSet.getString("name");
					String username = resultSet.getString("username");
					String email = resultSet.getString("email");
					String address = resultSet.getString("address");
					String phone = resultSet.getString("phone");
					String role = resultSet.getString("role");
					String password = resultSet.getString("password");

					user = new User(id, name, username, email, address, phone, role, password);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

	// Authenticate a User by username and password and return the User object
	public User authenticateUser(String username, String password) {
		String query = "SELECT * FROM users WHERE username = ? AND password = ?";
		User user = null;

		try (Connection connection = DBConnectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(query)) {

			statement.setString(1, username);
			statement.setString(2, password);

			try (ResultSet resultSet = statement.executeQuery()) {
				if (resultSet.next()) {
					int id = resultSet.getInt("id");
					String name = resultSet.getString("name");
					String email = resultSet.getString("email");
					String address = resultSet.getString("address");
					String phone = resultSet.getString("phone");
					String role = resultSet.getString("role");

					// Create a new User object with the retrieved data
					user = new User(id, name, username, email, address, phone, role);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

	// Check if a username exists
	public boolean usernameExists(String username) {
		String query = "SELECT COUNT(*) FROM users WHERE username = ?";
		boolean exists = false;

		try (Connection connection = DBConnectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(query)) {

			statement.setString(1, username);
			try (ResultSet resultSet = statement.executeQuery()) {
				if (resultSet.next()) {
					exists = resultSet.getInt(1) > 0;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return exists;
	}

	// Change a User's password
	public void changePassword(int userId, String newPassword) {
		String query = "UPDATE users SET password = ? WHERE id = ?";

		try (Connection connection = DBConnectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(query)) {

			statement.setString(1, newPassword);
			statement.setInt(2, userId);
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
