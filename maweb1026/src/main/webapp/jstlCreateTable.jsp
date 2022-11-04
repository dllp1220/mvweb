<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
    
<!DOCTYPE html>
<html>
<head>
<title>Create Operation</title>
</head>
<body> 
<sql:setDataSource var="sample" driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/mydemo?serverTimezone=Asia/Taipei"
     user="root"  password="1234"/> 
<sql:update dataSource="${sample}" var="result">
   create table Employees
    (
     id int primary key not  null,
     age int not null,
     firstname varchar (255),
     lastname varchar (255)
    )
</sql:update> 
 <c:out  value="Finish"/> 
</body>
</html>
