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
  <title>Title</title>
</head>
<body>
<form method="post" action="/ads">
  <div class="form-group">
    <label for="title">Title</label>
    <input id="title" placeholder="Enter new Title name" name="new_title" type="text">
  </div>
  <div class="form-group">
    <label for="description">Description</label>
    <input id="description" placeholder="Enter new description" name="new_description" type="text">
  </div>
  <button type="submit" name="editAd" class="btn btn-danger">Edit Ad</button>
</form>

</body>
</html>
