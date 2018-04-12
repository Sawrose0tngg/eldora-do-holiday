package org.eldoradoholidays.daoimpl;

import java.util.List;

import org.eldoradoholidays.dao.ResortDAO;
import org.eldoradoholidays.dto.Resort;
import org.eldoradoholidays.dto.ResortBook;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("resortDao")
@Transactional
public class ResortDAOImpl implements ResortDAO {

	@Autowired
	public SessionFactory sessionFactory;

	@Override
	public List<Resort> getAllResorts() {

		try {
			return sessionFactory.getCurrentSession().createQuery("FROM Resort", Resort.class).getResultList();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public Resort getSingleResort(int id) {

		try {
			return sessionFactory.getCurrentSession().createQuery("FROM Resort WHERE id = :id", Resort.class)
					.setParameter("id", id).getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public boolean bookResort(ResortBook resortBook) {

		try {
			sessionFactory.getCurrentSession().persist(resortBook);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updateRoom(Resort resort) {
		try {
			sessionFactory.getCurrentSession().update(resort);

			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
