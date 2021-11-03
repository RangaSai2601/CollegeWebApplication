<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view Student's</title>
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
  p{
      text-align: center;
      color: tomato;
      font-size: 30px;
  }
  body{
    background-color: rgb(149, 247, 225);
  }
  table {
    border-collapse: collapse;
    width: 100%;

  }
  th, td {
     padding: 8px;
     text-align: left;
     border-bottom: 1px solid rgb(230, 14, 219);
  }
  
  tr:hover {background-color: #29d3d3;}
</style>
</head>
<body>
    <div class="header">
        <a href="/home" >Home</a>
   </div>
   <p> Student Details</p>
   <br><br>
   <table >
       <tr>
           <th> Roll </th>
           <th> Name </th>
           <th>Department</th>
           <th>Date of Birth</th>
           <th>Gender</th>
           <th>Residence</th>
           <th>Fees</th>
       </tr>
       <c:forEach var="stud" items="${listst}">  
           <tr>
               <td>${stud.roll}</td>
               <td>${stud.name}</td>
               <td>${stud.department}</td>
               <td>${stud.dob}</td>
               <td>${stud.gender}</td>
               <td>${stud.residence}</td>
               <td>${stud.fees}</td>
           </tr>  
        </c:forEach>  
   </table>
</body>
</html>