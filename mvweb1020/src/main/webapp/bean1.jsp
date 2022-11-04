<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.Test" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaBean</title>
</head>
<body>
<% 
      Test t1=new Test();
      t1.setMessage("Hello");
%>
<h1>Test Message is <%= t1.getMessage() %></h1>
</body>
</html>