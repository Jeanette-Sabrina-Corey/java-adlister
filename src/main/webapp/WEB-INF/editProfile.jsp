<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/partials/stylesheet.html" %>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit User" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container bg-reg">
    <h1>Update your information below</h1>
    <form action="/profile-edit" method="post">
        <div class="form-group">
<%--            <label for="username">Username</label>--%>
            <input id="username" name="username" class="form-control" placeholder="Username" type="text">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
    <form action="/profile-delete" method="post">
        <button type="submit" name="deleteUser" id="deleteUser" class="btn btn-primary m-2" value="${user.id}">Delete your profile</button>
    </form>
</div>

<jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
