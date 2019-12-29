package com.rakesh.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.rakesh.shoppingbackend.dao.ProductDAO;
import com.rakesh.shoppingbackend.dto.Product;

public class ProductTestCases {

	private static AnnotationConfigApplicationContext context;
	
	private static ProductDAO productDAO;
	
	private static Product product;
	
	@BeforeClass
	public static void init() {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.rakesh.shoppingbackend");
		context.refresh();
		productDAO=(ProductDAO) context.getBean(ProductDAO.class);
	}
	
	
	
	@Test
	public void testCRUDProduct() {
	
	
		//create operation
		
		product =new Product();
		product.setName("Redmi Note 5");
		product.setBrand("Redmi");
		product.setDescription("This is some description for redmi note 5 ");
		product.setUnitPrice(8000); 
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);
		
		assertEquals("Something went worng while inserting a new product ", true,productDAO.add(product));
		
		/*
		 * //update
		 * 
		 * product =productDAO.get(2); product.setName("Samsung Galaxy S7");
		 * 
		 * assertEquals("Something went worng while getting a product ",
		 * true,productDAO.update(product));
		 * 
		 * //delete assertEquals("Something went worng while delete exsiting product ",
		 * true,productDAO.delete(product));
		 * 
		 * //Fetching
		 * assertEquals("Something went worng while fetching a list of product ",
		 * 6,productDAO.list().size());
		 */
		
	}
	
	
	
	/*@Test
	public void testListActiveProduct() {
		assertEquals("Something went worng while fetching a list of product ", 5,productDAO.listActiveProducts().size());
		
	}*/
	
	/*
	 * @Test public void testListActiveProductByCategory() {
	 * assertEquals("Something went worng while fetching a list of product ",
	 * 3,productDAO.listActiveProductsByCategory(3).size());
	 * 
	 * }
	 */
	
	
	/*
	 * @Test public void testListActiveLatestProduct() {
	 * assertEquals("Something went worng while fetching a list of product ",
	 * 3,productDAO.getlatestActiveProducts(3).size());
	 * 
	 * }
	 */
	
}
