<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/partials/stylesheet.html" %>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="bg-ads">
    <div>
        <h1 class="ads-header">Find the next AD<span class="ads-s">venture</span> that will take you into the
            wild...</h1>
    </div>
    <div>
        <div class="row md-6 justify-content-around">
            <c:forEach var="ad" items="${ads}">
                <div class="card m-5 card-bg" style="width: 400px">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/img/packing-list.jpg"
                         alt="Card image cap">
                    <div class="card-body">
                        <div>
                            <h5>${ad.title}</h5>
                            <p>${ad.description}</p>
                            <div class="col">
                                <form action="/ads/detailed">
                                    <button type="submit" name="id" id="id" class="btn card-btn btn-block"
                                            value="${ad.id}">
                                        View
                                        More
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
