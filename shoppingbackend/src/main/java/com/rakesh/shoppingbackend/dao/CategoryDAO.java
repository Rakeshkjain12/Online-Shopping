package com.rakesh.shoppingbackend.dao;

import java.util.List;

import com.rakesh.shoppingbackend.dto.Category;

public interface CategoryDAO {
   
	
	List<Category> list();
	Category get(int id);
}
