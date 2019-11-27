package com.rakesh.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.rakesh.shoppingbackend.dao.CategoryDAO;
import com.rakesh.shoppingbackend.dto.Category;

public class CategoryTestCases {
	

	/*
	 * private static AnnotationConfigApplicationContext context;
	 * 
	 * private static CategoryDAO categoryDAO; private static Category category;
	 * 
	 * @BeforeClass public static void init() {
	 * 
	 * context = new AnnotationConfigApplicationContext();
	 * context.scan("com.rakesh.shoppingbackend"); context.refresh(); categoryDAO =
	 * (CategoryDAO) context.getBean(CategoryDAO.class); }
	 */

//	@Test
//	public void testAddCategory() {
//
//		category = new Category();
//		category.setName("Laptop");
//		category.setDescription("This is some description for Laptop");
//		category.setImageURL("img13");
//
//		assertEquals("Successfully added a category in table", true, categoryDAO.add(category));
//	}
	
	
//    @Test
//	public void testGetCategory() {
//		category=categoryDAO.get(2);
//		assertEquals("Successfully fatch a category from table","Laptop", category.getName());
//	}
	
	/*
	 * @Test public void testUpdateCategory() { category=categoryDAO.get(2);
	 * category.setName("Desktop");
	 * assertEquals("Successfully update a category in table",true,
	 * categoryDAO.update(category)); }
	 */
	
	
	
//	@Test
//	public void testDeleteCategory() {
//	    category=categoryDAO.get(2);
//		assertEquals("Successfully delete a category from table",true, categoryDAO.delete(category));
//}
	
	/*
	 * @Test public void testListCategory() {
	 * assertEquals("Successfully fatch list of category from table",4,
	 * categoryDAO.list().size()); }
	 */
}
