package com.rakesh.shoppingbackend.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.rakesh.shoppingbackend.dto.Category;

public interface CategoryDAO {
   
	
	  boolean add(Category category); boolean update(Category category); boolean
	  delete(Category category);
	 
	List<Category> list();
	Category get(int id);
}
