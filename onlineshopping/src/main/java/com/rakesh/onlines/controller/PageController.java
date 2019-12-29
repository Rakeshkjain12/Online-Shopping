package com.rakesh.onlines.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rakesh.onlines.exception.productNotFoundException;
import com.rakesh.shoppingbackend.dao.CategoryDAO;
import com.rakesh.shoppingbackend.dao.ProductDAO;
import com.rakesh.shoppingbackend.dto.Category;
import com.rakesh.shoppingbackend.dto.Product;

@Controller
public class PageController {
	
	
	  private final static Logger
	  logger=LoggerFactory.getLogger(PageController.class);
	 
     
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping(value= {"/","/index","/home"})
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","Home");
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("userClickHome",true);
		
		
		  logger.info("Inside pagecontroller index method-Info");
		  logger.debug("Inside pagecontroller index method-Info");
		 
		return mv;
	}
	
	
	@RequestMapping(value= "/about")
	public ModelAndView about() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","About Us");
		mv.addObject("userClickAbout",true);

		return mv;
	}
	
	
	@RequestMapping(value= "/contact")
	public ModelAndView contact() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","Contact Us");
		mv.addObject("userClickContact",true);

		return mv;
	}
	
	
	@RequestMapping(value= "/show/all/products")
	public ModelAndView showAllProducts() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","All Products");
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("userClickAllProducts",true);

		return mv;
	}
	
	@RequestMapping(value= "/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		ModelAndView mv=new ModelAndView("page");
		
		//categoryDAO to fatch single category
		
		Category category=null;
		
		category=categoryDAO.get(id);
		mv.addObject("title",category.getName());
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("category", category);
		mv.addObject("userClickCategoryProducts",true);

		return mv;
	}
	
	
	@RequestMapping(value="/show/{id}/product")
	public ModelAndView showSingleProduct(@PathVariable int id)  throws productNotFoundException {
		ModelAndView mv=new ModelAndView("page");
		Product product=productDAO.get(id);
		
		
		 if(product==null) throw new productNotFoundException(); 
		
		
		//update the view count
		product.setViews(product.getViews()+1);
		productDAO.update(product);
		
		//-----------------------
		
		mv.addObject("product",product);
		mv.addObject("title",product.getName());
		
		//-------------------------
		
		mv.addObject("userClickShowProduct",true);
		return mv;
	}
	
	
	/* having similar mapping to our flow id */
	@RequestMapping(value= "/register")
	public ModelAndView register() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","About Us");
	    return mv;
	}
	
	

}
