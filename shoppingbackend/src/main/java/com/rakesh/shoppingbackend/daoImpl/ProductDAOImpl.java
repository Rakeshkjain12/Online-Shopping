package com.rakesh.shoppingbackend.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rakesh.shoppingbackend.dao.ProductDAO;
import com.rakesh.shoppingbackend.dto.Product;
@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
    @Autowired
	private SessionFactory sf;
	
	@Override
	public Product get(int productId) {
		try {
		return sf.getCurrentSession().get(Product.class, Integer.valueOf(productId));
		}catch(Exception ex) {
			ex.printStackTrace();
			
		}
		return null;
	}

	@Override
	public List<Product> list() {
		try {
		return sf.getCurrentSession().createQuery("From Product",Product.class).getResultList();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean add(Product product) {
		
		try {

           sf.getCurrentSession().save(product);
           return true;
	}catch(Exception ex) {
	       ex.printStackTrace();	
	}
		return false;
	}

	@Override
	public boolean update(Product product) {
		try {

	           sf.getCurrentSession().update(product);
	           return true;
		}catch(Exception ex) {
		       ex.printStackTrace();	
		}
			return false;
		
	}

	@Override
	public boolean delete(Product product) {
		try {
			product.setActive(false);
			return this.update(product);
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return false;
	}

	@Override
	public List<Product> listActiveProducts() {
		String selectActiveProduct ="From Product where active=:active";
		return sf.getCurrentSession().createQuery(selectActiveProduct,Product.class)
				.setParameter("active", true)
				.getResultList();
		
	}

	@Override
	public List<Product> listActiveProductsByCategory(int categoryId) {
		String selectActiveProduct ="From Product where active=:active AND categoryId=:categoryId";
		return sf.getCurrentSession().createQuery(selectActiveProduct,Product.class)
				                 .setParameter("active", true)
				                 .setParameter("categoryId", categoryId)
				                 .getResultList();
	}

	@Override
	public List<Product> getlatestActiveProducts(int count) {
		return sf.getCurrentSession().createQuery("FROM Product WHERE active=:active ORDER BY id",Product.class)
                .setParameter("active", true)
                .setFirstResult(0)
                .setMaxResults(count)
                .getResultList();
	}

}
