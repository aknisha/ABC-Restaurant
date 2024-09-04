package com.abc.service;

import com.abc.dao.UserDAO;
import com.abc.model.User;
import java.sql.SQLException;
import java.util.List;

public class UserService {

    private static UserService instance;
    private UserDAO userDAO;

    private UserService() {
        this.userDAO = new UserDAO();
    }

    public static UserService getInstance() {
        if (instance == null) {
            synchronized (UserService.class) {
                if (instance == null) {
                    instance = new UserService();
                }
            }
        }
        return instance;
    }

    public void addUser(User user) {
        userDAO.addUser(user);
    }

    public List<User> getAllUsers() throws SQLException {
        return userDAO.getAllUsers();
    }

    public void updateUser(User user) {
        userDAO.updateUser(user);
    }

    public void deleteUser(int id) {
        userDAO.deleteUser(id);
    }

    public User getUserById(int id) {
        return userDAO.getUserById(id);
    }

    public User authenticateUser(String username, String password) {
        return userDAO.authenticateUser(username, password);
    }

    public boolean usernameExists(String username) {
        return userDAO.usernameExists(username);
    }

    public void changePassword(int userId, String newPassword) {
        userDAO.changePassword(userId, newPassword);
    }
}
