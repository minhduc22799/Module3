package com.example.productmanager.model;

public class Product {
    private static int INDEX = 0;
    private long id;
    private String name;
    private Category category;
    private double price;

    public Product() {
    }


    public Product( String name, Category category, double price) {
        this.id = Long.valueOf(++INDEX);
        this.name = name;
        this.category = category;
        this.price = price;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
