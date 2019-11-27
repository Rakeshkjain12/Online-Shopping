package com.rakesh.shoppingbackend.daoImpl;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rakesh.shoppingbackend.dao.CategoryDAO;
import com.rakesh.shoppingbackend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class categoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sf;
      
	
	
	/*
	 * private static List<Category> list=new ArrayList<Category>(); static {
	 * Category category=new Category(); category.setId(1);
	 * category.setName("Laptop"); category.setDescription("This is Laptop");
	 * category.setImageURL("img_1"); category.setActive(true);
	 * 
	 * list.add(category);
	 * 
	 * category=new Category(); category.setId(2); category.setName("desktop");
	 * category.setDescription("This is desktop"); category.setImageURL("img_1");
	 * category.setActive(true);
	 * 
	 * list.add(category); }
	 */
	
	
	@Override
	public List<Category> list() {
		String selectActiveCategory="From Category where active=:active";
		Query query=sf.getCurrentSession().createQuery(selectActiveCategory);
		query.setParameter("active", true);
		return query.getResultList();
		
		/* return list; */
	}

	@Override
	public Category get(int id) {
		
		/*
		 * for (Category category : list) { if(category.getId()==id) { return category;
		 * } } return null;
		 */
		
		return sf.getCurrentSession().get(Category.class,Integer.valueOf(id));
	}

	@Override
	public boolean add(Category category) {
		try {
			sf.getCurrentSession().save(category);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Category category) {
		try {
	        sf.getCurrentSession().update(category);
	        return true;
		}catch(Exception ex)
		{  
			ex.printStackTrace();
			  return false;
		}
	      
	}

	@Override
	public boolean delete(Category category) {
              try {
            	  sf.getCurrentSession().delete(category);
            	  return true;
              }catch(Exception ex) {
            	  
            		return false;
              }
	
	}

}
