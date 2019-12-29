package com.rakesh.shoppingbackend.dao;

import java.util.List;

import com.rakesh.shoppingbackend.dto.Address;
import com.rakesh.shoppingbackend.dto.Cart;
import com.rakesh.shoppingbackend.dto.User;

public interface UserDAO {
 
	
	boolean addUser(User user);
	
	User getBuyEmail(String email); 
	
	boolean addAddress(Address address);
	
	Address getBillingAddress(int userId);
	
     List<Address> getShippingAddress(int userId);
	
	
	
	
	
	/*
	 * Address getBillingAddress(User user);
	 * 
	 * List<Address> getShippingAddress(User user);
	 */
	
	boolean UpdateCart(Cart cart);
}
