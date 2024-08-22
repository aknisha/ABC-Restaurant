package com.abc.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.List;

import com.abc.dao.MenuItemDAO;
import com.abc.model.MenuItem;

public class MenuItemService {

    private static MenuItemService instance;
    private MenuItemDAO menuItemDAO;

    private MenuItemService() {
        this.menuItemDAO = new MenuItemDAO();
    }

    public static MenuItemService getInstance() {
        if (instance == null) {
            synchronized (MenuItemService.class) {
                if (instance == null) {
                    instance = new MenuItemService();
                }
            }
        }
        return instance;
    }

    public void addMenuItem(MenuItem menuItem, File imageFile, String uploadDir) {
        try {
            String imagePath = saveImage(imageFile, uploadDir);
            menuItem.setImagePath(imagePath);
            menuItemDAO.addMenuItem(menuItem);
        } catch (IOException e) {
            e.printStackTrace();
            // Handle the exception appropriately, possibly rethrow as a custom exception
        }
    }

    public List<MenuItem> getAllMenuItems() throws SQLException {
        return menuItemDAO.getAllMenuItems();
    }

    public void updateMenuItem(MenuItem menuItem, File imageFile, String uploadDir) {
        try {
            if (imageFile != null) {
                String imagePath = saveImage(imageFile, uploadDir);
                menuItem.setImagePath(imagePath);
            }
            menuItemDAO.updateMenuItem(menuItem);
        } catch (IOException e) {
            e.printStackTrace();
            // Handle the exception appropriately, possibly rethrow as a custom exception
        }
    }

    public void deleteMenuItem(int id) {
        menuItemDAO.deleteMenuItem(id);
    }

    public MenuItem getMenuItemById(int id) {
        return menuItemDAO.getMenuItemById(id);
    }

    private String saveImage(File imageFile, String uploadDir) throws IOException {
        if (!Files.exists(Paths.get(uploadDir))) {
            Files.createDirectories(Paths.get(uploadDir));
        }

        // Generate a unique file name
        String fileName = System.currentTimeMillis() + "_" + imageFile.getName();
        String filePath = uploadDir + File.separator + fileName;

        // Save the image file to the specified path
        Files.copy(imageFile.toPath(), Paths.get(filePath));

        // Get the relative path by removing the upload directory prefix
        String relativePath = new File(uploadDir).toURI().relativize(new File(filePath).toURI()).getPath();

        return relativePath;
    }
}
