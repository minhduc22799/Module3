package com.example.productmanager.service;

import com.example.productmanager.model.Category;
import com.example.productmanager.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();

    List<Category> findAllCategory();

    void save(Product product);

    Product findById(long id);

    void update(long id, Product product);

    void remove(long id);
}
