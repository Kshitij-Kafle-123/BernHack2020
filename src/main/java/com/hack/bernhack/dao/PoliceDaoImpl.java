package com.hack.bernhack.dao;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hack.bernhack.model.Police;

@Repository
public class PoliceDaoImpl implements PoliceDao{
	
	@Resource
	private SessionFactory sf;
	
	@Override
	@Transactional
	public Police login(String branchName, String password) {
		Session session = sf.getCurrentSession();
		Criteria crt = session.createCriteria(Police.class);
		crt.add(Restrictions.eq("branchName", branchName)).add(Restrictions.eq("password", password));
		Police police = (Police) crt.uniqueResult();
		return police;
	}
}
