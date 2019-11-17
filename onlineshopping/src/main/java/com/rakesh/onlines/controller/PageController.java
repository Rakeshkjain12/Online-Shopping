package com.rakesh.onlines.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
   
	@RequestMapping(value= {"/","/index","/home"})
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting","welcome to spring");
		return mv;
	}
	
	/*
	@RequestMapping(value= "/test")
	public ModelAndView test(@RequestParam("greeting") String greeting) {
		if(greeting==null) {
			greeting="Hello Sir";
		}
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting",greeting);
		return mv;
	}*/
	
	@RequestMapping(value= "/test/{greeting}")
	public ModelAndView test(@PathVariable("greeting") String greeting) {
		if(greeting==null) {
			greeting="Hello Sir";
		}
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting",greeting);
		return mv;
	}
}
