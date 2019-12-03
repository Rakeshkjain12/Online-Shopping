package com.rakesh.onlines.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rakesh.shoppingbackend.dao.ProductDAO;
import com.rakesh.shoppingbackend.dto.Product;

@Controller

@RequestMapping("/json/data")
public class JsonDataController {

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("/all/products")
	@ResponseBody
	public List<Product> getListActiveProduct() {
		return productDAO.listActiveProducts();
	}
	
	
	@RequestMapping("/admin/all/products")
	@ResponseBody
	public List<Product> getAllProductForAdmin() {
		return productDAO.list();
	}
	
	
	
	

	@RequestMapping(value = "/category/{id}/products")

	@ResponseBody
	public List<Product> getProductByCategoryId(@PathVariable int id) {

		return productDAO.listActiveProductsByCategory(id);
	}

}
