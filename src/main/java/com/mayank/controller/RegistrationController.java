package com.mayank.controller;

import java.util.Map;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mayank.model.Registration;
import com.mayank.sessionfactory.Factory;

@Controller
@RequestMapping("/registration")
public class RegistrationController {
	
	@RequestMapping(method = RequestMethod.GET)
    public String viewRegistration(Map<String, Object> model) {
        Registration registerForm = new Registration();    
        model.put("registerForm", registerForm);        
        
        return "Registration";
    }
     
    @RequestMapping(method = RequestMethod.POST)
    public String processRegistration(@ModelAttribute("registerForm") Registration register,
            Map<String, Object> model) {
    	Registration registerObj = new Registration(); 
    	String fname= register.getFname();
    	String lname=register.getLname();
    	String email= register.getEmail();
    	String phone= register.getPhone();
    	String address= register.getAddress();
    	
    	registerObj.setFname(fname);
    	registerObj.setLname(lname);
    	registerObj.setEmail(email);
    	registerObj.setPhone(phone);
    	registerObj.setAddress(address);
    	
    	//SessionFactory sessionFactory= new Configuration().configure().buildSessionFactory();
    	
    	Session session = Factory.getSessionFactory().openSession();;
    	session.beginTransaction();
    	
    	session.save(registerObj);
    	session.getTransaction().commit();
    	session.close();
    	//sessionFactory.close();
    	Factory.getSessionFactory().close();
         
        return "RegistrationSuccess";
    }
}
