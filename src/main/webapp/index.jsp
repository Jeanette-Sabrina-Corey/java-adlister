<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/partials/stylesheet.html" %>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to ADventure!" /></jsp:include>
</head>
<body>

<div class="bg">
    <div class="container col">
        <div class="container">
        <img class="img-fluid brand" src="img/brand.png" alt="">
        </div>
        <p class="tagline">Get equipped for your next journey</p>
        <div class="container">
        <form action="/login">
            <button type="submit" name="login" id="login" class="btn btn-block landing-btn">Login</button>
        </form>
        <form action="/register">
            <button type="submit" name="register" id="register" class="btn btn-block landing-btn">Register</button>
        </form>
        </div>
    </div>
</div>

</body>
</html>
