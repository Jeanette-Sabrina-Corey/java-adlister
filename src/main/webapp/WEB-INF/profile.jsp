<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
</div>
<form action="/profile-edit">
    <button type="submit" name="editUser" id="editUser" class="btn btn-primary m-2" value="${user.id}">Edit Info</button>
</form>

<jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
