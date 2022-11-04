<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.ArrayList" %>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1">
        <%
            ArrayList<beans.SimpleEmp> list=new ArrayList<beans.SimpleEmp>() ;
            list=(ArrayList<beans.SimpleEmp>)request.getAttribute("emps");
            for(beans.SimpleEmp ep :list){
           %>   
           <tr>
           <td><%= ep.getId()%></td>
           <td><%= ep.getFname()%></td>
           <td><%= ep.getLname()%></td>
           <td><%= ep.getEmail()%></td></tr>
          <% 
           }           
            
        %>
        </table>
    </body>
</html>
