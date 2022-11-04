<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Bean</title>
</head>
<body>
  <jsp:useBean id="user1" class="model.Person" scope="session">
      <jsp:setProperty name="user1" property="*" ></jsp:setProperty>
  </jsp:useBean>
<h1>user1 bean saved to session</h1>
</body>
</html>