<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee View</title>
</head>
<body>
<table border="1">
     <tr>
        <th>No.</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
     </tr>
    <c:forEach var="em" items="${emps}">
           <tr>
             <td>${em.id}</td>
             <td>${em.fname }</td>
             <td>${em.lname}</td>
             <td>${em.email}</td>
           </tr>
    </c:forEach>
    </table>
</body>
</html>