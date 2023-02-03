package org.simplilearn.lms.dao;
 
import java.util.List;

import javax.transaction.SystemException;
import javax.transaction.Transaction;

import org.hibernate.Query;
import org.hibernate.Session;
import org.simplilearn.lms.config.HibConfig;
import org.simplilearn.lms.entities.Teacher;


import org.hibernate.SessionFactory;  
public class TeacherDaoImpl implements TeacherDao {

	@Override
	public void insert(Teacher teacher) {
		
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		org.hibernate.Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.save(teacher);
			tx.commit();
		}catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
	}

	@Override
	public List getAll() {

		SessionFactory factory=(org.hibernate.SessionFactory) HibConfig.getSessionFactory();
		Session session=factory.openSession();
		Query<Teacher> query=session.createQuery("select t from org.simplilearn.lms.entities.Teacher t ");
		
		return query.list();
		
	}

	@Override
	public void delete(Teacher teacher) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		org.hibernate.Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.delete(teacher);
			tx.commit();
		}catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
		
	}

	@Override
	public void update(Teacher teacher) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		Transaction tx=null;
		try {
			tx=(Transaction) session.beginTransaction();
			session.save(teacher);
			tx.commit();
		}catch (Exception e) {
			try {
				tx.rollback();
			} catch (IllegalStateException | SystemException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		
	}
	@Override
	public Teacher get(int tid) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		Teacher teacher=session.get(Teacher.class,tid);
		return teacher;
		
	}

}
