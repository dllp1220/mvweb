<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Counter Bean</title>
</head>
<body>
   <H1>Using Beans and Session Scope</H1>
        <jsp:useBean id="bean1" class="beans.Counter"  scope="session" />
        <% 
        bean1.setCounter(bean1.getCounter() + 1);
        %>
        The session counter value is: <jsp:getProperty  name="bean1"  property="counter" /> 
     <p>
      <jsp:useBean id="bean2" class="beans.Counter"  scope="application" />
        <% 
        bean2.setCounter(bean2.getCounter() + 1);
        %>
        The application counter value is: <jsp:getProperty  name="bean2"  property="counter" /> 
  
</body>
</html>