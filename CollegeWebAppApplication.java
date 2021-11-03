package com.ProjectStudent.CollegeWebApp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CollegeWebAppApplication implements CommandLineRunner{

	@Autowired
	Dao data;
	
	public static void main(String[] args) {
		SpringApplication.run(CollegeWebAppApplication.class, args);
		
	}

	@Override
	public void run(String... args) throws Exception {
		
		data.addAdmin(new Admin("Admin1","Venkatesh","Hyderabad",948756321,"Male","asdf123"));
		data.addAdmin(new Admin("Admin2","SuryaVardhan","Vijaywada",945958321,"Male","asdf1234"));
		data.addAdmin(new Admin("Admin3","Chenna Keshava","Kurnool",948784521,"Female","asdf1234"));
		data.addStudent(new Student(21,"Pavan Kumar","Babu Nagendra","ECE","pavanECE","22-11-2002","Male","Ananthapur",1500000));
	    data.addStudent(new Student(23,"Sai Charan","Chenakeshavulu","EEE","saiEEE","06-03-2002","Female","Banglore",1600000));
		data.addStudent(new Student(25,"Akhil Kumar","AdiNarayana","ECE","akhilECE","26-01-2001","Male","Hyderabad",1400000));
	}

}
