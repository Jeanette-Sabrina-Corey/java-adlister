<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
<%--    <jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
    <div class="container col">
        <h1>ADventure</h1>
        <p>Get equipped for your next journey</p>
        <form action="/login">
            <button type="submit" name="login" id="login">Login</button>
        </form>
        <form action="/register">
            <button type="submit" name="register" id="register">Register</button>
        </form>

    </div>
</body>
</html>
