package com.rakesh.onlines.exception;

import java.io.PrintWriter;
import java.io.StringWriter;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {

	
	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handleNoHandlerFoundException() {
		ModelAndView mv =new ModelAndView("error");
		
		mv.addObject("errorTitle","This page is not Constructed");
		
		mv.addObject("errorDescription","The page you are loooking for is not available now");
		
		mv.addObject("title","404 Error page");
		
		
		
		return mv;
	}
	
	
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handleException(Exception ex) {
		ModelAndView mv =new ModelAndView("error");
		
		mv.addObject("errorTitle","Contact Administration");
		
	
		
		/* only for debugging */
		
		StringWriter sw=new StringWriter();
		PrintWriter pw=new PrintWriter(sw);
		ex.printStackTrace(pw);
		
		mv.addObject("errorDescription",sw.toString());
		mv.addObject("title","Error");
		
		
		
		return mv;
	}
	
	
	
	
}
