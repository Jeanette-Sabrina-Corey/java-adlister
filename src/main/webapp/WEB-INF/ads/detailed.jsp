<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Details"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <div class="col-md-6">
        <h2>${ad.title}</h2>
        <h5>${user.username}</h5>
        <p>${ad.description}</p>
    </div>
</div>

<jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
