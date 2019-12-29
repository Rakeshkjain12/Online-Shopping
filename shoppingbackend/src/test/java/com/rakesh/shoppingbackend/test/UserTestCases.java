package com.rakesh.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.rakesh.shoppingbackend.dao.UserDAO;
import com.rakesh.shoppingbackend.dto.Address;
import com.rakesh.shoppingbackend.dto.Cart;
import com.rakesh.shoppingbackend.dto.User;

public class UserTestCases {
  
	
	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user=null;
	private Address address=null;
	private Cart cart=null;
	
	
	@BeforeClass
	public static void init() {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.rakesh.shoppingbackend");
		context.refresh();
		
		userDAO=(UserDAO) context.getBean("userDAO");
		
	}
	
/*	@Test
	public void testAdd() {
		
		user=new User();
		user.setFirstName("sandeep");
		user.setLastName("tiwari");
		user.setEmail("sandeep@gmail.com");
		user.setContactNumber("123456789");
		user.setRole("USER");
		user.setPassword("12345");
		
		assertEquals("Failed to add new User",true,userDAO.addUser(user));
		
		
		address=new Address();
		address.setAddressLineOne("Ashokanagar colony , Kharadi");
		address.setAddressLineTwo("near Bharat gas");
		address.setCity("Pune");
		address.setState("Maharashtra");
		address.setPostalCode("411011");
		address.setBilling(true);
		
		//link the User with the address using userId
		
		address.setUserId(user.getId());
		
		
		assertEquals("Failed to add new Address",true,userDAO.addAddress(address));
		
		
		if(user.getRole().equals("USER")) {
			//create a cart for this User
			
			cart=new Cart();
			cart.setUser(user);
			 
			assertEquals("Failed to add new cart",true,userDAO.addCart(cart));
			
			address=new Address();
			address.setAddressLineOne("Barodiya Kalan");
			address.setAddressLineTwo("Dhamoni Road");
			address.setCity("Sagar");
			address.setState("M.P.");
			address.setPostalCode("470441");
			address.setShipping(true);
			
			address.setUserId(user.getId());
			
			assertEquals("Failed to add Shipping Address",true,userDAO.addAddress(address));
		}
		
	}
	*/
	
	
//	@Test
//	public void testAdd() {
//		
//		user=new User();
//		user.setFirstName("sandeep");
//		user.setLastName("tiwari");
//		user.setEmail("sandeep@gmail.com");
//		user.setContactNumber("123456789");
//		user.setRole("USER");
//		user.setPassword("12345");
//		
//	
//	
//		if(user.getRole().equals("USER")) {
//			//create a cart for this User
//			
//			cart=new Cart();
//			cart.setUser(user);
//			
//			user.setCart(cart);
//			 
//		
//		}
//		
//		assertEquals("Failed to add new User",true,userDAO.addUser(user));
//		
//	}
	
	
//	@Test
//	public void testUpdateCart() {
//          user=userDAO.getBuyEmail("sandeep@gmail.com");
//          cart=user.getCart();
//		
//          cart.setCartLines(5);
//          cart.setGrandTotal(5000);
//          
//          assertEquals("Failed to Update cart",true,userDAO.UpdateCart(cart));
//	}
	
	
	
	/*@Test
	public void testAddAddress() {
		
		user=new User();
		user.setFirstName("sandeep");
		user.setLastName("tiwari");
		user.setEmail("sandeep@gmail.com");
		user.setContactNumber("123456789");
		user.setRole("USER");
		user.setPassword("12345");
		
		assertEquals("Failed to add new User",true,userDAO.addUser(user));
		
		
		address=new Address();
		address.setAddressLineOne("Ashokanagar colony , Kharadi");
		address.setAddressLineTwo("near Bharat gas");
		address.setCity("Pune");
		address.setState("Maharashtra");
		address.setPostalCode("411011");
		address.setBilling(true);
		
		//link the User with the address using userId
		
		address.setUser(user);
		assertEquals("Failed to add  Address",true,userDAO.addAddress(address));
		
		address=new Address();
		address.setAddressLineOne("Barodiya Kalan");
		address.setAddressLineTwo("Dhamoni Road");
		address.setCity("Sagar");
		address.setState("M.P.");
		address.setPostalCode("470441");
		address.setShipping(true);
		
		address.setUser(user);
		assertEquals("Failed to add  Address",true,userDAO.addAddress(address));
	}
	
	*/
//	@Test
//	public void testAddAddress() {
//		user=userDAO.getBuyEmail("sandeep@gmail.com");
//		
//		address=new Address();
//		address.setAddressLineOne("Barodiya Kalan");
//		address.setAddressLineTwo("Dhamoni Road");
//		address.setCity("Sagar");
//		address.setState("M.P.");
//		address.setPostalCode("470441");
//		address.setShipping(true);
//		
//		address.setUser(user);
//		assertEquals("Failed to add  Address",true,userDAO.addAddress(address));
//		
//	}
//	
	
	
	/*
	 * @Test public void testGetBillingAddress() {
	 * user=userDAO.getBuyEmail("sandeep@gmail.com");
	 * assertEquals("Failed to fatch billing Address","Pune",userDAO.
	 * getBillingAddress(user).getCity());
	 * 
	 * }
	 * 
	 * @Test public void testGetShippimgAddress() {
	 * user=userDAO.getBuyEmail("sandeep@gmail.com");
	 * assertEquals("Failed to fatch billing Address",2,userDAO.getShippingAddress(
	 * user).size());
	 * 
	 * }
	 */
	
}
