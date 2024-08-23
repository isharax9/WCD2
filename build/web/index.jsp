<%-- 
    Document   : index
    Created on : Aug 21, 2024, 8:52:06 AM
    Author     : isharaLakshitha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="/WEB-INF/tlds/ctl" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Custom Tag Libraries (CTL)</h1>
        
        
        <c:set var="a" value="10"/>
        <c:set var="b" value="20" scope="page"/>
        <c:set var="c" value="30" scope="request"/>
        <c:set var="d" value="40" scope="session"/>
        <c:set var="e" value="50" scope="application"/>
        
        ${pageScope.a}
        ${pageScope.b}
        ${requestScope.c}
        ${sessionScope.d}
        ${applicationScope.e}

    </body>
</html>
   