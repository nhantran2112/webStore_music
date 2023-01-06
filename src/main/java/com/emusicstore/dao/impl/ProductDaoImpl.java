package com.emusicstore.dao.impl;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionfactory;

    public SessionFactory getSf() {
        return sessionfactory;
    }

    public void setSf(SessionFactory sf) {
        this.sessionfactory = sf;
    }

    public void addProduct(Product product) {
        Session session = sessionfactory.getCurrentSession();
        session.save(product);
        session.flush();

    }

    public void editProduct(Product product) {
        Session session = sessionfactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();

    }

    public void deleteProduct(String id) {
        Session session = sessionfactory.getCurrentSession();
        session.delete(getProductById(id));
        session.flush();
    }

    public List<Product> getProducts() {
        List<Product> products;
        System.out.println("Session Factory obj..." + sessionfactory);
        Session session = sessionfactory.getCurrentSession();
        System.out.println("Inside getting ..");
        Query query = session.createQuery("from com.emusicstore.model.Product");

        products = query.list();
        session.flush();
        System.out.println();
        System.out.println(products);
        System.out.println();
        return products;
    }

    public Product getProductById(String id) {

        Session session = sessionfactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, id);
        session.flush();
        return product;
    }
}
