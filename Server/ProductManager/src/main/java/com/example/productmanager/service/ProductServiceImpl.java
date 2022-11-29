package com.example.productmanager.service;

import com.example.productmanager.model.Category;
import com.example.productmanager.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Long, Product> products;
    private static List<Category> categories;

    static {
        categories = new ArrayList<>();
        categories.add(new Category("TL1"));
        categories.add(new Category("TL2"));
        categories.add(new Category("TL3"));

        products = new HashMap<>();
        products.put(1L,new Product("Product 1",categories.get(0),100000.0));
        products.put(2L,new Product("Product 2",categories.get(1),100000.0));
        products.put(3L,new Product("Product 3",categories.get(2),100000.0));
    }


    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public List<Category> findAllCategory() {
        return categories;
    }

    @Override
    public void save(Product product) {
        products.put( product.getId(), product);
    }

    @Override
    public Product findById(long id) {
        return products.get(id);
    }

    @Override
    public void update(long id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(long id) {
        products.remove(id);
    }
}

