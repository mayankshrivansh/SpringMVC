package com.mayank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FormController {
	@RequestMapping("/login")
	public ModelAndView form(){
		ModelAndView formModel =  new ModelAndView("Login");
		return formModel;
	}

}
