package com.mayank.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*public class HelloController extends AbstractController {
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
	throws Exception{
		ModelAndView modelandview = new ModelAndView("HelloPage");
		modelandview.addObject("WelcomeMessage", "Hello There, This is your first Spring MVC application");
		return modelandview;
	}*/

@Controller
public class HelloController{
	
	@RequestMapping("/welcome")
	public ModelAndView helloWorld(){
		ModelAndView modelandview = new ModelAndView("HelloPage");
		modelandview.addObject("WelcomeMessage", "Hello There, This is your first Spring MVC application");
		return modelandview;
	
	}
}

}
