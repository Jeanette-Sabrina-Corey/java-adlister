<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/partials/stylesheet.html" %>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create New Ad"/>
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="bg-create">
    <div class="container">
        <div>
            <h1 class="create-header">Create a new AD<span class="ads-l">venture</span> below...</h1>
        </div>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <input id="title" name="title" class="form-control" placeholder="Title" type="text">
            </div>
            <div class="form-group">
                <textarea id="description" name="description" class="form-control" placeholder="Description"></textarea>
            </div>
            <div class="form-group">

                <c:forEach var="category" items="${categories}">

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" value=""${category.id} id="categories_id">
                    <label class="form-check-label" for="categories_id">
                        Default checkbox
                    </label>
                </div>

            </div>

            </c:forEach>

            <button type="submit" name="createAd" id="createAd" class="btn create-btn btn-block"
            >Create New Ad
            </button>

        </form>
    </div>

</div>

<jsp:include page="/WEB-INF/partials/foot.jsp"/>

</body>
</html>
