package com.rajesh.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


import com.rajesh.model.User;

public class UserDao {
	static SessionFactory sf;
	static Session session;
	
	static
	{
		sf=new Configuration().configure().buildSessionFactory();
		session=sf.openSession();
		System.out.println("Connection established successfully");
	}
	
	public void insert(User u)
	{
		session.beginTransaction();
		session.save(u);
		session.getTransaction().commit();
	}
	
	public List<User> display()
	{
		String hql="from User";
		session.beginTransaction();
		Query q=session.createQuery(hql);
		List<User> user=q.list();
		session.getTransaction().commit();
		return user;
	}
	
	public User singleUser(long mobile)
	{
		 
	        User  user= (User) session.get(User.class, mobile);
	        return user;
	}
	
	
	public void update(User ur)
	{
		
		String hql="select mobile,password from User u where u.mobile=:newMobile,u.password=:newPassword";
		session.beginTransaction();
		Query q=session.createQuery(hql);
		q.setParameter("newMobile", ur.getMobile());
		q.setParameter("newPassword", ur.getPassword());
		
		q.executeUpdate();
		session.getTransaction().commit();
		
	}

}
