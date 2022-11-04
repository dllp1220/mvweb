<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <UL>            
            <c:forEach var="i" begin="1" end="10">
                <li><c:out value="${i}"/>
                    <c:if test="${i > 7}">
                        (greater than 7)
                    </c:if>
                 </li>
                </c:forEach>
        </UL>
    </body>
</html>
