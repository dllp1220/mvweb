<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login JSP</title>
</head>
<body>
      <jsp:useBean id="user"  class="Model.UserPassword">
            <jsp:setProperty name="user" property="*" />
       </jsp:useBean>
        Name: ${user.user} 
        <br/>
        Password:${user.password} 
        <br/>
        Age:${user.age} 
        
      
</body>
</html>