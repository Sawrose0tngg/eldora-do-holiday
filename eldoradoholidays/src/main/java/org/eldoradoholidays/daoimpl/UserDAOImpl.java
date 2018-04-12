package org.eldoradoholidays.daoimpl;

import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import org.eldoradoholidays.dao.UserDAO;
import org.eldoradoholidays.dto.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean addUser(User user) {
		try {
			sessionFactory.getCurrentSession().persist(user);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean getUser(String email, String password) {

		try {
			sessionFactory.getCurrentSession().createQuery("FROM User WHERE email = :email AND password = :password")
					.setParameter("email", email).setParameter("password", password).getSingleResult();
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	@Override
	public User getUserByEmail(String email) {

		try {
			return sessionFactory.getCurrentSession().createQuery("FROM User WHERE email = :email", User.class)
					.setParameter("email", email).getSingleResult();

		} catch (Exception e) {
			return null;
		}
	}
	

	@Override
	public boolean updateUser(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public User getWinterPackage(User user) {
		try {
			return sessionFactory.getCurrentSession()
					.createQuery("FROM User WHERE id = :id", User.class)
					.setParameter("id", user.getId())
					.getSingleResult();
			 
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public List<User> getUsers() {
		try {
			return sessionFactory.getCurrentSession().createQuery("FROM User", User.class).getResultList();

		} catch (Exception e) {
			return null;
		}
	}

}
