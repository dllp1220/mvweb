<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Message</title>
</head>
<body>
  <form action="helloctrl" method="post">
     <select name="user">
        <c:forEach var="u" items="${users}">
                <option value="${u}"><c:out value="${u}"/></option> 
                
        </c:forEach>        
     </select>
     <input type="submit"/>
  </form>
</body>
</html>