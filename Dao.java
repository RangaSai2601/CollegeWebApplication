package com.ProjectStudent.CollegeWebApp;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class Dao {

	@PersistenceContext
	EntityManager enty;
	
	public void addStudent(Student stud) {
		enty.persist(stud);
	}
	
	public Student editStudent(Student stud) {
		return enty.merge(stud);
	}
	
	public Student findStudent(int roll) {
		return enty.find(Student.class, roll);
	}
	
	public void deleteStudent(int roll) {
		Student std= findStudent(roll);
		enty.detach(std);
	}
	
	@SuppressWarnings("unchecked")
	public List<Student> allStudents(){
		Query namd = enty.createQuery("select s from student s order by roll asc");
		return namd.getResultList();
	}
	
	
	public void addAdmin(Admin adm) {
		enty.persist(adm);
	}
	
	public Admin editAdmin(Admin adm) {
		return enty.merge(adm);
	}
	
	public Admin getAdmin(String  username) {
		return enty.find(Admin.class, username);
	}
	
	public void deleteAdmin(String username) {
		Admin adm= getAdmin(username);
		enty.detach(adm);
	}
	
	@SuppressWarnings("unchecked")
	public List<Admin> allAdmins(){
		Query namd = enty.createQuery("select a from admin a order by username asc");
		return namd.getResultList();
	}
	
	public void addAdminStudent(String username,Student stud) {
		Admin adm=getAdmin(username);
		List<Student> lis=adm.getList();
		lis.add(stud);
		
		enty.merge(adm);
	}
}
