package com.rakesh.shoppingbackend.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.rakesh.shoppingbackend.dao.CategoryDAO;
import com.rakesh.shoppingbackend.dto.Category;


@Repository("categoryDAO")
public class categoryDAOImpl implements CategoryDAO {
	
	private static List<Category> categories=new ArrayList<Category>();
     
	static {
		
		Category c=new Category();
		c.setId(1);
		c.setName("Television");
		c.setDescription("This is some description for television");
		c.setImageURL("img1");
		categories.add(c);
		
		c=new Category();
		c.setId(2);
		c.setName("Mobile");
		c.setDescription("This is some description for Mobile");
		c.setImageURL("img2");
		categories.add(c);
		
		c=new Category();
		c.setId(3);
		c.setName("Laptop");
		c.setDescription("This is some description for Laptop");
		c.setImageURL("img3");
		categories.add(c);
		
	}
	
	@Override
	public List<Category> list() {
		return categories;
	}

	@Override
	public Category get(int id) {
		
		for (Category category : categories) {
			if(category.getId()==id)
			{
				return category;
			}
		}
		return null;
	}

}
