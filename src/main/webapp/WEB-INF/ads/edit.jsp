<%--
  Created by IntelliJ IDEA.
  User: jeanette
  Date: 4/22/21
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="/WEB-INF/partials/stylesheet.html" %>
  <jsp:include page="../partials/head.jsp">
    <jsp:param name="title" value="edit Ad"/>
  </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp" />
<div class="container">
  <form method="post" action="${pageContext.request.contextPath}/edit">
    <div class="form-group">
      <label for="title">Title</label>
      <input id="title" class="form-control" placeholder="Enter new Title name" name="new_title" type="text">
    </div>
    <div class="form-group">
      <label for="description">Description</label>
      <input id="description" class="form-control" placeholder="Enter new description" name="new_description" type="text">
    </div>

      <button type="submit" name="editAd" class="btn btn-primary">Edit Ad</button>

    <button type="submit" name="deleteAd" class="btn btn-danger">Delete Ad</button>
  </form>
</div>
<jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
