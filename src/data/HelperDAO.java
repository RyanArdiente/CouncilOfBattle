package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

@Transactional

public class HelperDAO {
	
	@PersistenceContext
	
	private EntityManager em;

	
	public void init() {
		
		Student stu = new Student();
		
		System.out.println(stu);
		
	}
	
	
	public User getUser(int id) {
		User us = em.find(User.class, id);
		em.detach(us);
		System.out.println(us);
		return us;
	}
	
	public User setUser() {
		
		
		User user = new User();
		
		user.setFirstname("Ben");
		user.setLastname("K");
		user.setEmail("bk@gmail.com");
		
		em.persist(user);

		System.out.println(user);
		return user;
	}
	
	
	
	
}
