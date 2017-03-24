package com.priyanka.gzb1.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.priyanka.gzb1.model.*;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.persist(product);
	}

	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts() {
		Session session = sessionFactory.getCurrentSession();
		List<Product> products = session.createQuery("from Product").getResultList();
		if (products.isEmpty()) {
			System.out.println("Empty");
		} else {
			for (Product product : products) {
				System.out.println(product.getProductName());
			}
		}
		return products;
	}

	public void updateProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.update(product);
	}

	public void deleteProduct(int productId) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(productId));
		if(null != p){
			session.delete(p);
		}
	}

	public Product getProductById(int productId) {
		Session session = this.sessionFactory.getCurrentSession();		
		Product p = (Product) session.load(Product.class, new Integer(productId));
		return p;
	}

}