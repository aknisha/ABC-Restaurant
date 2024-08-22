package com.abc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.abc.model.MenuItem;

public class MenuItemDAO {

    // Add a new MenuItem
    public void addMenuItem(MenuItem menuItem) {
        String query = "INSERT INTO menu_item (Title, Price, Description, Image_path, Category) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DBConnectionFactory.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            
            statement.setString(1, menuItem.getTitle());
            statement.setDouble(2, menuItem.getPrice());
            statement.setString(3, menuItem.getDescription());
            statement.setString(4, menuItem.getImagePath());
            statement.setString(5, menuItem.getCategory());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Retrieve all MenuItems
    public List<MenuItem> getAllMenuItems() {
        List<MenuItem> menuItems = new ArrayList<>();
        String query = "SELECT * FROM menu_item";

        try (Connection connection = DBConnectionFactory.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {
            
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String title = resultSet.getString("Title");
                double price = resultSet.getDouble("Price");
                String description = resultSet.getString("Description");
                String imagePath = resultSet.getString("Image_path");
                String category = resultSet.getString("Category");
                
                menuItems.add(new MenuItem(id, title, price, description, imagePath, category));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return menuItems;
    }

    // Update an existing MenuItem
    public void updateMenuItem(MenuItem menuItem) {
        String query = "UPDATE menu_item SET Title = ?, Price = ?, Description = ?, Image_path = ?, Category = ? WHERE id = ?";

        try (Connection connection = DBConnectionFactory.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            
            statement.setString(1, menuItem.getTitle());
            statement.setDouble(2, menuItem.getPrice());
            statement.setString(3, menuItem.getDescription());
            statement.setString(4, menuItem.getImagePath());
            statement.setString(5, menuItem.getCategory());
            statement.setInt(6, menuItem.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Delete a MenuItem by id
    public void deleteMenuItem(int id) {
        String query = "DELETE FROM menu_item WHERE id = ?";

        try (Connection connection = DBConnectionFactory.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Retrieve a MenuItem by id
    public MenuItem getMenuItemById(int id) {
        String query = "SELECT * FROM menu_item WHERE id = ?";
        MenuItem menuItem = null;

        try (Connection connection = DBConnectionFactory.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    String title = resultSet.getString("Title");
                    double price = resultSet.getDouble("Price");
                    String description = resultSet.getString("Description");
                    String imagePath = resultSet.getString("Image_path");
                    String category = resultSet.getString("Category");

                    menuItem = new MenuItem(id, title, price, description, imagePath, category);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return menuItem;
    }
}
