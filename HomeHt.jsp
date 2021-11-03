<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
 body{
    background-color: rgb(149, 247, 225);
  }
  .adminData{
   background-color: rgb(83, 62, 218);
   position: absolute;
   top: 200px;
   left: 200px;
   right: 950px;
   bottom: 300px;
   padding-left: 100px;
   padding-right: 100px;
   border-radius: 10px; 
   color: rgba(240, 248, 255, 0.986);
  }
  .studentData{
   background-color: rgb(83, 62, 218);
   position: absolute;
   top: 200px;
   left: 900px;
   right: 250px;
   bottom: 300px;
   padding-left: 100px;
   padding-right: 100px;
   border-radius: 10px; 
   color: rgba(240, 248, 255, 0.986);
  }
  .btn {
     border-radius: 10px ;
     background-color:rgba(244, 247, 248, 0.979);
     padding: 5px 8px;
     font-size: 16px;
     cursor: pointer;
     display: inline-block;
}
  .btn:hover {background: rgba(238, 238, 238, 0.76);}

  h2 {
      font-family:cursive,'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
  }
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
  .header.a.header.a.logout {
      color:rgba(245, 245, 245, 0.815);
      padding-inline-end: 10px;
      text-decoration: none;
  }
  .mes{
  color:rgb(240, 12, 12);
  font-size: 25px;
  text-align: center;
   }

   
</style>
</head>
<body>
    <div class="header"> 
        <a href="/home" >Home</a>
        <a href="/home/studentData">Student's Data</a>
        <a href="/info"> College Info</a>
    </div>
    <br>
    <div class="mes">
     ${message} 
    </div>
    <div class="adminData">
        <h2>Admin Login</h2>
      <form action="/home/admin" method="post">
          Enter Your User name <br>
          <input type="text" name="name" placeholder="Enter your user name" style="border-radius: 5px;  "/><br>
          Enter Your Password <br>
          <input type="password" name="Password" placeholder="Enter your Password" style="border-radius: 5px;  "/><br><br>
          <input type="submit" name="submit" class="btn" />
      </form>
    </div>
    <div class="studentData">
        <h2>Student Login</h2>
      <form action="/home/student" method="post">
          Enter Your Roll No <br>
          <input type="number" name="roll" placeholder="Enter your Roll no" style="border-radius: 5px;  "/><br>
          Enter Your Password <br>
          <input type="password" name="password" placeholder="Enter your Password" style="border-radius: 5px;  "/><br><br>
          <input type="submit" name="submit" class="btn" />
      </form>
    </div>
</body>
</html>