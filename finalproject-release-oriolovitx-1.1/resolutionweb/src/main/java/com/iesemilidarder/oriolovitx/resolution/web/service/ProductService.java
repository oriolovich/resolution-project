package com.iesemilidarder.foy.resolution.web.service;

import com.iesemilidarder.foy.resolution.core.data.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service

public class ProductService {

    /* ArrayList de objetos de la clase "Product"*/
    private static List<Product> productList = new ArrayList<Product>(Arrays.asList(
            new Product("1", "Event 1", "Decription 1", "10"),
            new Product("2", "Event 2", "Decription 2", "20"),
            new Product("3", "Event 3", "Decription 3", "30")
    ));

    /*Metodo ver todos los productos*/
    public List<Product> getAllProducts() {
        return productList;
    }

    /*Metodo ver el producto por id*/
    public Product getProductById(String id) {
        try {
            if (id == null) {
                return null;
            }
            return productList.stream().filter(t -> t.getId().equals(id)).findFirst().get();
        } catch (Exception e) {
            return null;
        }
    }

    /*Metodo añadir pruducto*/
    public void addProduct(Product product) {
        productList.add(product);
    }

    /*Metodo actulizar pruducto*/
    public void updateProduct(Product prod, String id) {
        for (int i = 0; i < productList.size(); i++) {
            Product product = productList.get(i);
            if (product.getId().equals(id)) {
                productList.set(i, prod);
            }
        }
    }

    /*Metodo eliminar producto*/
    public void deleteProduct(String id) {
        productList.removeIf(t -> t.getId().equals(id));
    }
}
