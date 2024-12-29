package com.example.swapspot.services;

import com.example.swapspot.models.Product;
import com.example.swapspot.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j // логирование
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public List<Product> listProducts(String title) {
        if (title != null) return productRepository.findByTitle(title);

        return productRepository.findAll();
    }

    public void saveProduct (Product product) {
        log.info("Saving product: {}", product);
        productRepository.save(product);
    }
    public void deleteProduct (Long id) {
        log.info("Deleting product: {}", id);
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
