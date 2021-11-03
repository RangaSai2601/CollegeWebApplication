<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student details</title>
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
      padding-top: 100px;
      font-family:monospace;
  }
 
</style>
</head>
<body>
    <div class="header">
        <a href="/home" >Log out</a>
   </div>
   <br>
   <div class="formNew">
       <form >
         Your Details<br>
        Roll No:- "${stud.roll}" <br>
        Full Name:- "${stud.name}" <br>
        Father Name:- "${stud.father}"<br>
        Date Of Birth:- "${stud.dob}" <br>
        Gender :- "${stud.gender}" <br>
        Residence :- "${stud.residence}"<br>
        Department:- "${stud.department}" <br>
        Fees:- "${stud.fees}" <br> 
        Password:- "${stud.password}" <br>
       </form>
   </div>
   <br><br>
   <div class="err">
    ${message}  ${name}
   </div>
</body>
</html>