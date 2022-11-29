package com.example.product.service;

import com.example.product.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
    private static Map<Integer,Product> products;
    static {
        products = new HashMap<>();
        products.put(1,new Product(1,"Product 4",100000.0, "Des 1","NSX1"));
        products.put(2,new Product(2,"Product 1",200000.0, "Des 1","NSX2"));
        products.put(3,new Product(3,"Product 2",400000.0, "Des 1","NSX3"));
        products.put(4,new Product(4,"Product 3",200000.0, "Des 1","NSX1"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findByID(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
