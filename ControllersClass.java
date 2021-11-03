package com.ProjectStudent.CollegeWebApp;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControllersClass {
	
	@Autowired
	Dao data;
 
	@GetMapping(value="/home")
	public String  homePage() {
		return "HomeHt";
	}
	
	@RequestMapping(value="/info")
	public String infoPage() {
		return "infoHt";
	}
	
	@GetMapping(value="/home/studentData")
	public String studentData(Model mod) {
		List<Student> lis= data.allStudents();
		mod.addAttribute("listst", lis);
		return "Viewstudent";
	}
	
	@GetMapping(value="/home/admin")
	public String  homePag12e() {
		return "AdminHt";
	}

	 @PostMapping(value="/home/admin")
		public String adminPage(@RequestParam String name,String Password,ModelMap mod) {
			
			Admin adm=data.getAdmin(name);
			if(adm==null) {
				mod.addAttribute("message","Your User Name is Invalid");
				return "HomeHt";
			}
			else if(Password.equals(adm.getPassword())) {
				mod.addAttribute("adm", adm);
				return "AdminHt";
			}
			else {
				mod.addAttribute("message","Your Password is Invalid");
				return "HomeHt";
			}
		}
	
	@PostMapping(value="/home/student")
	public String studentPage(@RequestParam int roll,String password,Model mod) {
		Student stud=data.findStudent(roll);
		
		if(stud==null) {
			mod.addAttribute("message", "Your UserName is Invalid" );
			return "HomeHt";
		}
		else if(password.equals(stud.getPassword())) {
			
			mod.addAttribute("stud", stud);
			return "studentHt";
		}
		else {
			mod.addAttribute("message", "Your Password is Invalid" );
			return "HomeHt";
		}
	}
	
	@GetMapping(value="/home/admin/addAdmin")
	public String addAdmin() {
		return "NewAdmin";
	}
	
	@PostMapping(value="/home/admin/addAdmin")
	public String newAdmin(@ModelAttribute("admin") Admin admin, Model mod) {
		Admin adm=data.getAdmin(admin.getUsername());
		if(adm==null) {
			data.addAdmin(admin);
			mod.addAttribute("message","Added ");
			mod.addAttribute("name",admin.getName());
		}
		else {
			mod.addAttribute("message","Invalid User Name, Details with the same user name Already exist");
			mod.addAttribute("name",admin.getUsername());
		}
		return "NewAdmin";
	}
	
	@GetMapping(value="/home/admin/addStudent/{name}")
	public String addStudent(@PathVariable String name,Model mod) {
		mod.addAttribute("tag", name);
		return "NewStudent";
	}                   
	
	@PostMapping(value="/home/admin/addStudent/{tag}")
	public String newStudent(@ModelAttribute("stud") Student stud, @PathVariable String tag,Model mod) {
		
		Student chk=data.findStudent(stud.getRoll());
		if(chk==null) {
			data.addStudent(stud);
			data.addAdminStudent(tag, stud);
			mod.addAttribute("message","Added "+stud.getName());
		}
		else {
			mod.addAttribute("message","Invalid Roll no"+ stud.getRoll() +"Details with the same Roll no Already exist");
			
		}
		return "NewStudent";
	}
	
   @GetMapping(value="/home/admin/viewStudent/{name}")
   public String adminViewStudent(@PathVariable String name ,Model mod) {
	   Admin admin=data.getAdmin(name);
	   List<Student> list=admin.getList();
	   mod.addAttribute("list", list);
	   mod.addAttribute("admin", name);
	   return "AdminStudentsHt";
   }
   
   @GetMapping(value="/home/admin/viewAdmin")
   public String adminviewAdmin(Model mod) {
	   List<Admin> list=data.allAdmins();
	   mod.addAttribute("list", list);
	   return "AllAdminHt";
   }
}
