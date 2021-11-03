<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
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
  .admin,p{
      text-align: center;
      font-size: 25px;
  }
</style>
</head>
<body>
  <div class="header">
      <a href="/home/admin/addAdmin" >Add Admin</a>
      <a href="/home/admin/viewAdmin">View Admins Data</a>
      <a href="/home/admin/addStudent/${adm.username}">Add Student</a>
      <a href="/home/admin/viewStudent/${adm.username}">View Student Data</a>
      <a href="/home" >Log out</a>
     </div>
    <p > Your Details </p>
    <br>
    <div class="admin">  
        User Name:- "${adm.username}" <br>
        Name:- "${adm.name}" <br>
        Location:- "${adm.location}"<br>
        Phone No:- "${adm.phnno}" <br>
        Gender :- "${adm.gender}" <br>
        Password:- "${adm.password}" <br>
    </div>
</body>
</html>