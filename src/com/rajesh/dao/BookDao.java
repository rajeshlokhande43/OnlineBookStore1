package com.rajesh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.rajesh.model.Book;




public class BookDao {
	
	static SessionFactory sf;
	static Session session;
	
	static
	{
		sf=new Configuration().configure().buildSessionFactory();
		session=sf.openSession();
		System.out.println("Connection established successfully");
	}
	
	
	
	public void insert(Book b)
	{
		session.beginTransaction();
		session.save(b);
		session.getTransaction().commit();
	}
	
	
	public List<Book> displayBook()
	{
		String hql="from Book";
		session.beginTransaction();
		Query q=session.createQuery(hql);
		List<Book> book=q.list();
		session.getTransaction().commit();
		return book;
	}
	

	
	public Book singleDisplay(int id)
	{
		 
	        Book book = (Book) session.get(Book.class, id);
	        return book;
	}
	
	
	
	
/*	public List<Book> update(Book b)
	{
		String hql="update Book set name = :newName,author = :newAuthor,price = :newPrice where id = :id";
		Query q=session.createQuery(hql);
		q.setString("newName",b.getName());
		q.setString("newAuthor",b.getAuthor());
		q.setDouble("newPrice",b.getPrice());
		q.setInteger("id",b.getId());
		List<Book> book=q.list();
		session.saveOrUpdate(book);
		session.getTransaction().commit();
		return book;
	}*/
	
	public void updateall(Book b)
	{
		
		Book c=(Book) session.get(Book.class,b.getId());
		c.setName(b.getName());
		c.setPrice(b.getPrice());
		c.setAuthor(b.getAuthor());	
	}
	
	
	public void delete(Book b)
	{
		session.beginTransaction();
		Book c=(Book) session.get(Book.class,b.getId());
		session.delete(c);
		session.getTransaction().commit();
		System.out.println("Successfully Delete ...");

	}


	
	
	
	
	

}