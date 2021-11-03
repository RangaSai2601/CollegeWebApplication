package com.ProjectStudent.CollegeWebApp;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="admin")
public class Admin {

	@Id
	String username;
	String name;
	String location;
	int phnno;
	String gender;
	String password;
	
	@OneToMany(targetEntity=Student.class)
	List<Student> list;
	
	public List<Student> getList() {
		return list;
	}

	public void setList(List<Student> list) {
		this.list = list;
	}

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Admin(String username, String name, String location, int phnno, String gender, String password) {
		super();
		this.username = username;
		this.name = name;
		this.location = location;
		this.phnno = phnno;
		this.gender = gender;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getPhnno() {
		return phnno;
	}

	public void setPhnno(int phnno) {
		this.phnno = phnno;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Admin [username=" + username + ", name=" + name + ", location=" + location + ", phnno=" + phnno
				+ ", gender=" + gender + ", password=" + password + "]";
	}
	
	
	
}
