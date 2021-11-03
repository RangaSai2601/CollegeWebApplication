<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Admins</title>
</head>
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
<body>
    <div class="header">
        <a href="/home" >Home</a>
   </div>
   <p> Admin's Details</p>
   <br><br>
   <table >
       <tr>
           <th> User Name </th>
           <th> Name </th>
           <th>Location</th>
           <th>Phone no</th>
           <th>Gender</th>
           <th>Password</th>
       </tr>
       <c:forEach var="adm" items="${list}">  
           <tr>
               <td>${adm.username}</td>
               <td>${adm.name}</td>
               <td>${adm.location}</td>
               <td>${adm.phnno}</td>
               <td>${adm.gender}</td>
               <td>${adm.password}</td>
           </tr>  
        </c:forEach>  
   </table>
</body>
</html>