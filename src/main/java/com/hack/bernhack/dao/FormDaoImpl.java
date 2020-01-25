package com.hack.bernhack.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hack.bernhack.model.FormValue;

@Repository
public class FormDaoImpl implements FormDao{

	@Resource
	private SessionFactory sf;
	
	@Override
	@Transactional
	public void addReport(FormValue formValue) {
		Session session = sf.getCurrentSession();
		session.save(formValue);
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<FormValue> getAllReports() {
		Session session = sf.getCurrentSession();
		Criteria crt = session.createCriteria(FormValue.class);
		List<FormValue> formList = crt.list();
		return formList;
	}
}
