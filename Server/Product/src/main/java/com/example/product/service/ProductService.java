package com.example.product.service;

import com.example.product.model.Product;

import java.util.List;

public interface ProductService {

    List<Product> findAll();
    void save(Product product);
    Product findByID(int id);
    void update (int id, Product product);
    void remove(int id);
}
