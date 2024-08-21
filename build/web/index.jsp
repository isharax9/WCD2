<%-- 
    Document   : index
    Created on : Aug 21, 2024, 8:52:06 AM
    Author     : isharaLakshitha
--%>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <fm:formatNumber value="10.528" type="currency" currencyCode="LKR" var="x" scope="session"></fm:formatNumber>
        ${sessionScope.x}
    </body>
</html>
