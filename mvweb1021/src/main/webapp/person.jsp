<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person View</title>
</head>
<body>
<table border="1" width="60%">
  <tr>
    <th>Name</th><th>Phone</th><th>Age</th>
  </tr>
  <c:forEach var="p" items="${persons}">
  <tr>
     <td>${p.name}</td>  <td>${p.phone}</td>  <td>${p.age}</td>
  </tr>
  </c:forEach>
</table>
</body>
</html>