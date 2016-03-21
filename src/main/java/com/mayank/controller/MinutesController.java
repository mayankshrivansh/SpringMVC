package com.mayank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mayank.model.Exercise;

@Controller
public class MinutesController {
	
	@RequestMapping(value="/addminutes")
	public String addMinutes(@ModelAttribute ("exercise") Exercise exercise){
		System.out.println("Exercise minutes: "+ exercise.getMinutes());
		return "addMinutes";
	}

}
