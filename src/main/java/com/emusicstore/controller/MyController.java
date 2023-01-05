package com.emusicstore.controller;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.nio.file.Path;
import java.util.List;

@Controller
public class MyController {


    @Autowired
    private ProductDao dao;//= new ProductDaoImpl();

    private Path path;

    @RequestMapping("/")
    public String home() {
        System.out.println("Inside the Controller");
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
    public String viewProduct(@PathVariable String productId, Model model) throws IOException {

        Product product = dao.getProductById(productId);
        model.addAttribute("product", product);
        return "viewProduct";
    }

}





