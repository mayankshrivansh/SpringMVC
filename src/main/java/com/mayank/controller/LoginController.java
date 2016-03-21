package com.mayank.controller;

import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mayank.model.User;
import com.mayank.sessionfactory.Factory;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
    @RequestMapping(method = RequestMethod.GET)
    public String viewRegistration(Map<String, Object> model) {
        User userForm = new User();    
        model.put("userForm", userForm);        
        
        return "UserLogin";
    }
     
    @RequestMapping(method = RequestMethod.POST)
    public String processRegistration(@ModelAttribute("userForm") User user,
            Map<String, Object> model) {
    	User userObj = new User();
    	String uname= user.getUsername();
    	String pass=user.getPassword();
    	
    	userObj.setUsername(uname);
    	userObj.setPassword(pass);
    	
    	//SessionFactory sessionFactory= new Configuration().configure().buildSessionFactory();
    	
    	Session session = Factory.getSessionFactory().openSession();
    	session.beginTransaction();
    	
    	session.save(userObj);
    	session.getTransaction().commit();
    	session.close();
    	//sessionFactory.close();
    	Factory.getSessionFactory().close();
        System.out.println("username: " + user.getUsername());
        System.out.println("password: " + user.getPassword());
         
        return "LoginSuccess";
    }
}
