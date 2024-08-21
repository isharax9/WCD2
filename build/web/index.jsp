<%-- 
    Document   : index
    Created on : Aug 21, 2024, 8:52:06 AM
    Author     : isharaLakshitha
--%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Home</h1>

        <h2>${f:contains("Java","f")}</h2>

        <h2>${f:endsWith("Ishara", "a")}</h2>

        <%
            String x[] = {"Java", "php", "c#"};
            session.setAttribute("a", x);
        %>

        <h2>${f:join(sessionScope.a," ")}</h2>

        <h2>${f:length("hello")}</h2>

        <h2>${f:replace("Java", "a", "_")}</h2>

        <h2>${f:split("Java", "a")[0]}</h2>

        <h2>${f:substring("Java", 1, 3)}</h2>

    </body>
</html>
