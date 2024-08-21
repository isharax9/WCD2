<%-- 
    Document   : index
    Created on : Aug 21, 2024, 8:52:06 AM
    Author     : isharaLakshitha
--%>
<%@page import="java.util.Date"%>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Home</h1>

        <% Date d = new Date();
            session.setAttribute("d", d);
        %>
        <fm:formatDate value="${sessionScope.d}" type="date" pattern="yyyy-MM-dd" var="x" scope="session"></fm:formatDate>
        ${sessionScope.x}
    </body>
</html>
