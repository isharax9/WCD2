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

        <c:user id="1">
            <c:name>Sahan</c:name>
        </c:user>

        <c:user id="2">
            <c:name>Kasun</c:name>
        </c:user> 

        <c:user id="4">
            <c:name>Ishara</c:name>
        </c:user>



        <h2>${applicationScope.user1.name}</h2>
        <h2>${applicationScope.user2.name}</h2>
        <h2>${applicationScope.user4.name}</h2>

    </body>
</html>
