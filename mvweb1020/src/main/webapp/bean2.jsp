<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean class="beans.Test" id="t1" ></jsp:useBean>
<jsp:setProperty name="t1" property="message" value="test message"></jsp:setProperty>

<h1>Test Message is <jsp:getProperty name="t1" property="message" /></h1>
<h1>Test Message is ${t1.message}</h1>

</body>
</html>