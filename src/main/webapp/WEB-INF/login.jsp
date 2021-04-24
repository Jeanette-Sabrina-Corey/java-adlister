<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/partials/stylesheet.html" %>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<div class="bg-login">
    <div class="container">
        <h1 class="brand-login">ADventure</h1>
<%--        <h3 class="login-h1">Please Log In</h3>--%>
        <form action="/login" method="POST">
            <div class="form-group">
<%--                <label for="username">Username</label>--%>
                <input id="username" name="username" class="form-control" placeholder="Username" type="text">
            </div>
            <div class="form-group">
<%--                <label for="password">Password</label>--%>
                <input id="password" name="password" class="form-control" placeholder="Password" type="password">
            </div>
            <input type="submit" class="btn btn-block login-btn" value="Log In">
        </form>
    </div>
</div>
</body>
</html>
