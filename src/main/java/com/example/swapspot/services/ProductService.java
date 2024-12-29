package com.example.swapspot.services;

import com.example.swapspot.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;
    {
        products.add(new Product(++ID,"Яблоко", "a", 100, "Rostov-on-Don", "Bill"));
        products.add(new Product(++ID,"Iphone 16", "a", 100000, "Rostov-on-Don", "Bill"));
    }
    public List<Product> listProducts() { return products; }

    public void saveProduct (Product product) {
        product.setId(++ID);
        products.add(product);
    }
    public void deleteProduct (Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        return products.stream().filter(product -> product.getId().equals(id)).findFirst().orElse(null);
    }
}
