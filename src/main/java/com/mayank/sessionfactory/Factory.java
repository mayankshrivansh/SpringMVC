package com.mayank.sessionfactory;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Factory {

	private static SessionFactory factory;

	public static SessionFactory getSessionFactory() {
		
		if(factory==null){
			factory = new Configuration().configure().buildSessionFactory();
			return factory;
		}
		else{
			return factory;	
		}
	}
	
}
