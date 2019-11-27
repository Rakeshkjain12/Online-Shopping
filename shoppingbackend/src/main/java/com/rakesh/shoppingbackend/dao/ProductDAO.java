package com.rakesh.shoppingbackend.dao;

import java.util.List;

import com.rakesh.shoppingbackend.dto.Product;

public interface ProductDAO {
   Product get(int productId);
   List<Product> list();
   boolean add(Product product);
   boolean update(Product product);
   boolean delete(Product product);
   
   // Business methods 
   List<Product> listActiveProducts();
   List<Product>  listActiveProductsByCategory(int categoryId);
   List<Product>  getlatestActiveProducts(int count);
}
