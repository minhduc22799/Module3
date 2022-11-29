package com.example.productmanager.model;

public class Category {
    private static int INDEX = 0;
    private long id;
    private String name;

    public Category() {
    }

    public Category( String name) {
        this.id = Long.valueOf(++INDEX);
        this.name = name;
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
}
