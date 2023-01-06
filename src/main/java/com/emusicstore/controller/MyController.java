package com.emusicstore.controller;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MyController {


    @Autowired
    private ProductDao dao;

    private Path path;

    @RequestMapping("/")
    public String home(Model model) {
        System.out.println("Inside the Controller");
        System.out.println("Inside the List...Now");
        List<Product> products = dao.getProducts();
        System.out.println("Products received...");
        System.out.println(products);
        System.out.println();

        List<Product> productsSpring = new ArrayList<Product>();
        List<Product> productsSummer = new ArrayList<Product>();
        List<Product> productsWinter = new ArrayList<Product>();
        List<Product> productsPopular = new ArrayList<Product>();

        for (Product item : products) {
            if (item.getProductCategory().equals("Spring")) {
                productsSpring.add(item);
            } else if (item.getProductCategory().equals("Summer")) {
                productsSummer.add(item);
            } else if (item.getProductCategory().equals("Winter"))
                productsWinter.add(item);
        }
        for (int i = 0; i < 8; i++) {
            productsPopular.add(products.get(i));
        }

        model.addAttribute("productsSpring", productsSpring);
        model.addAttribute("productsSummer", productsSummer);
        model.addAttribute("productsWinter", productsWinter);
        model.addAttribute("productsPopular", productsPopular);
        return "home";
    }


    @RequestMapping("/productList")
    public String getProducts(Model model) {
        System.out.println("Inside the List...Now");
        List<Product> products = dao.getProducts();
        System.out.println("Products received...");
        System.out.println(products);
        System.out.println();
        model.addAttribute("products", products);
        return "productList";
    }


    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId, Model model) {
        Product product = dao.getProductById(productId);
        List<Product> products = dao.getProducts();
        List<Product> productSimilar = new ArrayList<Product>();
        for (Product item : products) {
            if (item.getProductCategory().equals(product.getProductCategory()) && !item.getProductId().equals(product.getProductId())) {
                productSimilar.add(item);
            }
        }
        model.addAttribute("product", product);
        model.addAttribute("productSimilar", productSimilar);
        return "viewProduct";
    }

}





