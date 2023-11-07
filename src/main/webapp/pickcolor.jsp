<%--
  Created by IntelliJ IDEA.
  User: danieldeane
  Date: 11/4/23
  Time: 1:39PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pick Color</title>
</head>
<body>
<h1>Pick Your Favorite Color</h1>
<form action="${pageContext.request.contextPath}/pickColorServlet" method="POST">
    <label>
        <input type="text" name="color" placeholder="Enter color">
    </label>
    <input type="submit" value="Submit">
</form>
</body>
</html>
