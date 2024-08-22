package com.abc.model;

public class MenuItem {
    private int id;
    private String title;
    private double price;
    private String description;
    private String imagePath;
    private String category;

    // Default constructor
    public MenuItem() {}

    // Parameterized constructor
    public MenuItem(int id, String title, double price, String description, String imagePath, String category) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.description = description;
        this.imagePath = imagePath;
        this.category = category;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
