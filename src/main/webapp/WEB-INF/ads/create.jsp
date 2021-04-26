
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
            <div class="form-group create-check">

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="1" name="category" value="1">
                    <label class="form-check-label" for="1">Camping Gear</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="2" name="category" value="2">
                    <label class="form-check-label" for="2">Hiking Gear</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="3" name="category" value="3">
                    <label class="form-check-label" for="3">Fishing Gear</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="4" name="category" value="4">
                    <label class="form-check-label" for="4">Tips and Tricks</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="5" name="category" value="5">
                    <label class="form-check-label" for="5">Outdoor Meets</label>
                </div>

            </div>

            <button type="submit" name="createAd" id="createAd" class="btn create-btn btn-block"
            >Create New Ad
            </button>

        </form>
    </div>

</div>

<jsp:include page="/WEB-INF/partials/foot.jsp"/>

</body>
</html>
