<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@include file="/WEB-INF/partials/stylesheet.html" %>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Details"/>
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="bg-detail">
    <div class="container">
            <h2 class="detail-title">${ad.title}</h2>
            <img src="/img/river.jpg" class="img-thumbnail rounded mx-auto d-block img-detail" alt="...">
            <div class="container m-3">
            <h5 class="detail-more">ADventurer: ${user.username}</h5>
            <p class="detail-more">${ad.description}</p>
            </div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
