package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;


import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Product;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ProductController {

    @Autowired
    private ProductService productService;

    /*Ver todos los productos*/
    @RequestMapping("/products")
    public List<Product> getAllProducts(){
        return productService.getAllProducts();
    }

    /*Ver el producto por id*/
    @RequestMapping("/products/{id}")
    public Product getProduct(@PathVariable String id){
        return productService.getProductById(id);
    }

    /*Añadir pruducto*/
    @RequestMapping(method = RequestMethod.POST, value = "/products")
    public void addProduct(@RequestBody Product product){
        productService.addProduct(product);
    }

    /*Actulizar producto*/
    @RequestMapping(method = RequestMethod.PUT, value = "/products/{id}")
    public void updateProduct(@RequestBody Product product, @PathVariable String id){
        productService.updateProduct(product,id);
    }

    /*Eliminar producto*/
    @RequestMapping(method = RequestMethod.DELETE, value = "/products/{id}")
    public void deleteProduct(@PathVariable String id){
        productService.deleteProduct(id);
    }

}
