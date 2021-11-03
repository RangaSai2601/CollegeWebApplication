# CollegeWebApplication
Heloo Every One this is my first project using Java and Spring Framework

**Used Technolgies 
Frontend:- Jsp servlets, Html5 , Css;
Backend:- Spring JPA, Spring Boot, Spring MVC
@One to many relationship is used between Admin and Student**

Here is the clear explanation of my project in a detail way

-> First in the home page we will have to login by the user details either Student or Admin. If username or wrong password is typed a msg will be shown on top of same page Invalid user name or Password respectivley.
Header bar contains following links 
Student's Data  -> view all student's
Info -> Info Page About college
<p align="center">
  <img src="Home page.png" width="450" title="home page">
</p>

-> After Login of Admin you can see the Details of Admin on the screen and admin has a chance to add any new admin's or new student's. He also can see the details of students   which was added by him. (Here I have used @One to Many relationship btw Admin and Student).
Header bar contains following links 
Add Student -> add new student
Add Admin -> add new Admin
View Admin's -> view all admin's
View Student -> view student of respective admin
logout -> home page
<p align="center">
  <img src="Admin Page.png" width="450" title="Admin page">
</p>
Here is a sample of Adding a new Student
<p align="center">
  <img src="New Student.png" width="450" title="New Student page">
</p>

Here is how student details are displayed. (In similar way admin Details are also displayed)
<p align="center">
  <img src="Student Details.png" width="450" title="Student Details page">
</p>

Here is how info page is displayed. Contains the message from principal and details of college.
**Below contains the address of the college along which send mail text (by clicking on it), it will open the windows mail services to send mail to principalCollege@gmail.com**
<p align="center">
  <img src="Info Page.png" width="450" title="Student Details page">
</p>
