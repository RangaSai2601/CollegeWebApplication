package com.ProjectStudent.CollegeWebApp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="student")
public class Student {

	@Id
	@Column(name="roll")
	int roll;
	@Column(name="name")
	String name;
	@Column(name="father")
	String father;
	@Column(name="department")
	String department;
	@Column(name="password")
	String password;
	@Column(name="dob")
	String dob;
	@Column(name="gender")
	String gender;
	@Column(name="residence")
	String residence;
	@Column(name="fees")
	int fees;
	
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Student(int roll, String name, String father, String department, String password, String dob,
			String gender, String residence, int fees) {
		super();
		this.roll = roll;
		this.name = name;
		this.father = father;
		this.department = department;
		this.password = password;
		this.dob = dob; 
		this.gender = gender;
		this.residence = residence;
		this.fees = fees;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRoll() {
		return roll;
	}

	public void setRoll(int roll) {
		this.roll = roll;
	}

	public String getFather() {
		return father;
	}

	public void setFather(String father) {
		this.father = father;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getResidence() {
		return residence;
	}

	public void setResidence(String residence) {
		this.residence = residence;
	}

	public int getFees() {
		return fees;
	}

	public void setFees(int fees) {
		this.fees = fees;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	@Override
	public String toString() {
		return "Student [roll=" + roll + ", name=" + name + ", father=" + father + ", department=" + department
				+ ", password=" + password + ", dob=" + dob + ", gender=" + gender
				+ ", residence=" + residence + ", fees=" + fees + "]";
	}

}
