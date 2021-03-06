<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/partials/stylesheet.html" %>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>

<div class="bg-reg">
    <div class="container">
        <div class="container">
            <img class="img-fluid brand" src="img/brand.png" alt="">
        </div>
        <p class="reg-tagline">Sign up and gear up!</p>
        <form action="/register" method="post">
            <div class="form-group">
                <input id="username" name="username" class="form-control" placeholder="Username" type="text">
            </div>
            <div class="form-group">
                <input id="email" name="email" class="form-control" placeholder="Email" type="text">
            </div>
            <div class="form-group">
                <input id="password" name="password" class="form-control" placeholder="Password" type="password">
            </div>
            <div class="form-group">
                <input id="confirm_password" name="confirm_password" class="form-control"
                       placeholder="Confirm Password" type="password">
            </div>
            <input type="submit" class="btn reg-btn btn-block">
        </form>
    </div>
</div>

</body>
</html>
