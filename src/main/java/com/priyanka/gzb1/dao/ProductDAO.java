package com.priyanka.gzb1.dao;
import java.util.List;

import com.priyanka.gzb1.model.*;
public interface ProductDAO {
	
	public void addProduct(Product product);
	public List<Product> getAllProducts();
	public Product getProductById(int productId);
	public void updateProduct(Product product);
	public void deleteProduct(int productId);

}
