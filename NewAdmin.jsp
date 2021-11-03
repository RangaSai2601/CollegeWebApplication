<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Admin</title>
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
   Add new Admin Details
   </p>
   <div class="formNew">
       <form action="/home/admin/addAdmin" method="post" modelattribute="admin">
        
        User Name:-  <input type="text" name="username" /><br>
        Full Name:- <input type="text" name="name" /><br>
        Location:- <input type="text" name="location" /><br>
        Phone No:- <input type="number" name="phnno" /><br>
        Gender :- <input type="radio" name="gender" value="Male"/> Male <input type="radio" name="gender" value="Female">Female<br>
        Password:- <input type="password" name="password" /><br>
        <input type="submit" name="Submit" style="width: 100px;">
       </form>
   </div>
   <br><br>
   <div class="err">
    ${message}  ${name}
   </div>
</body>
</html>