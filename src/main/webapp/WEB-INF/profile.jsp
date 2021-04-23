<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <button type="submit" name="editUser" id="editUser" class="btn btn-primary m-2" value="${user.id}">Edit Info
    </button>
</form>

<div>

        <c:forEach var="ad" items="${ads}">

            <div class="card m-5" style="width: 18rem;">
                <img class="card-img-top" src="..." alt="Card image cap">
                <div class="card-body">
                    <div>
                        <h5>${ad.title}</h5>
                        <p>${ad.description}</p>
                        <div class="row">
                            <form action="/ads/detailed">
                                <button type="submit" name="id" id="id" class="btn btn-primary m-2" value="${ad.id}">
                                    View
                                    More
                                </button>
                            </form>
                            <form action="/edit">
                                <button type="submit" name="edit" id="edit" class="btn btn-primary m-2"
                                        value="${ad.id}">Edit
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </c:forEach>

</div>

<jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
