
<%--
  Created by IntelliJ IDEA.
  User: danieldeane
  Date: 11/4/23
  Time: 1:38PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <style>
    body {
      background-color: ${color};
    }
  </style>
  <title>View Color</title>
</head>
<body>
<h1>Your favorite color is <c:out value="${color}" />!</h1>
</body>
</html>
