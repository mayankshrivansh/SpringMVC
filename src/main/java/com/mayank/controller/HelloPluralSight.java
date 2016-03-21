package com.mayank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloPluralSight {
	
	@RequestMapping(value="/helloplural")
	public String sayHello(Model model){
		model.addAttribute("greeting", "Hello Baby, I am here !!");
		return "hello";
	} 

}
