<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/partials/stylesheet.html" %>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>


<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="bg-pro">


    <div class="container pro-welcome">
        <h1>Hey There, ${sessionScope.user.username}!</h1>
    </div>
    <div class="container">
        <form action="/profile-edit">
            <button type="submit" name="editUser" id="editUser" class="btn pro-btn btn-block" value="${user.id}">Edit
                Info
            </button>
        </form>

        <div class="card-deck">

            <c:forEach var="ad" items="${ads}">

                <div class="card m-5 card-bg" style="width: 400px">
                    <img class="card-img-top" src="/img/packing-list.jpg" alt="Card image cap">
                    <div class="card-body">
                        <div>
                            <h5>${ad.title}</h5>
                            <p>${ad.description}</p>
                            <div class="col">
                                <form action="/ads/detailed">
                                    <button type="submit" name="id" id="id" class="btn card-btn btn-block mt-2"
                                            value="${ad.id}">
                                        View
                                        More
                                    </button>
                                </form>
                                <form action="/edit">
                                    <button type="submit" name="edit" id="edit" class="btn card-btn btn-block"
                                            value="${ad.id}">Edit
                                    </button>
                                </form>
                                <form action="/delete">
                                    <button type="submit" name="delete" id="delete" class="btn card-btn btn-block"
                                            value="${ad.id}">Delete
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </c:forEach>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/foot.jsp"/>


</body>
</html>
