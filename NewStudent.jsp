<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
<style>
    .header {
      padding: 10px;
      padding-left: 50px;
      background: #010e0b;
      font-size: 20px;
    }
  a{
      color:rgba(245, 245, 245, 0.815);
      padding-right: 10px;
      text-decoration: none;
   }
  body{
    background-color: rgb(149, 247, 225);
  }
  .formNew{
      text-align: center;
      font-size: 25px;
      word-spacing: 3px;
      padding-top: 25px;
      font-family:monospace;
  }
  .err,p{
    color:rgb(240, 12, 12);
    font-size: 25px;
    text-align: center;
  }
</style>
</head>
<body>
    <div class="header">
        <a href="/home" >Log out</a>
   </div>
   <br>
    <p>
   Add new Student Details
   </p>
   <div class="formNew">
       <form action="/home/admin/addStudent/${tag}" method="post" modelattribute="stud">
       
        Roll No:-  <input type="number" name="roll" required/><br>
        Full Name:- <input type="text" name="name" required/><br>
        Father Name:- <input type="text" name="father" required/><br>
        Date Of Birth:- <input type="date" name="dob" min="2001-01-01" required/><br>
        Gender :- <input type="radio" name="gender" value="Male" required/> Male <input type="radio" name="gender" value="Female" required>Female<br>
        Residence :- <input type="radio" name="residence" value="Hostel" required/> Hostel <input type="radio" name="residence" value="Day Scholar" required>Day Scholar<br>
        Department:- <input type="text" name="department" required/><br>
        Fees:- <input type="number" name="fees" required><br> 
        Password:- <input type="password" name="password" required /><br>
        <input type="submit" name="Submit" style="width: 100px;" required>
       </form>
   </div>
   <br><br>
   <div class="err">
    ${message}  
   </div>
</body>
</html>