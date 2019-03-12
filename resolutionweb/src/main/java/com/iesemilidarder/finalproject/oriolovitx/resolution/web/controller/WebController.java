package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;

import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Product;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller

public class WebController {
    protected final Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ProductService productService;

    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("product", productService.getAllProducts());
        return "index";
    }

    /*Ver todos los productos*/
    @RequestMapping("/allProducts")
    public String getAllProducts(@ModelAttribute("model") ModelMap model) {
        model.addAttribute("product", productService.getAllProducts());
        return "allProducts";
    }

    /*Ver producto por id - buscador*/
    @RequestMapping("/product/search")
    public String getProduct(@RequestParam String id, Model model) {
        try {
            Product p = productService.getProductById(id);
            if (p != null && p.getId().equals(id)) {
                model.addAttribute("product", p);
            }
        } catch (Exception e) {
            log.error("Valor introducido no valido", e);
        }
        return "product";
    }

    /*Formulario para añadir producto dentro del array list */

    @GetMapping("/addProduct")
    public String index() {
        return "redirect:/form";
    }

    @GetMapping("/form")
    public String formGet(Model model) {
        model.addAttribute("product", new Product());
        return "form";
    }

    @PostMapping("/form")
    public String formPost(@Valid Product product, BindingResult bindingResult, Model model) {
        try {
            model.addAttribute("noErrors", true);
            if (productService.getProductById(product.getId()) != null) {
                productService.updateProduct(product, product.getId());
            } else if (!bindingResult.hasErrors()) {
                productService.addProduct(product);
            }

            model.addAttribute("product", product);
        } catch (Exception e) {
            log.error("Error", e);
        }
        return "form";

    }

    /*Mostrar actualizar formulario de usuario*/
    @RequestMapping(value = "/product/{id}/update", method = RequestMethod.GET)
    public String updateProduct(@PathVariable("id") String id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        return "/form";
    }

    /*Eliminar producto*/
    @RequestMapping("/product/delete/{id}")
    public String productDelete(@PathVariable("id") String id, Model model) {
        productService.deleteProduct(id);
        return "redirect:/allProducts";
    }
}