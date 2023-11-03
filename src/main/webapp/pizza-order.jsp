<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order</title>
</head>
<body>

<form action="/pizza-order.jsp" method="POST">
    <%--@declare id="toppings"--%>
        <label for="crust">Crust Type:</label>
    <select name="crust" id="crust">
        <option value="thin">Thin</option>
        <option value="thick">Thick</option>
        <option value="stuffed">Stuffed</option>
    </select>

    <label for="sauce">Sauce Type:</label>
    <select name="sauce" id="sauce">
        <option value="marinara">Marinara</option>
        <option value="bbq">BBQ</option>
        <option value="alfredo">Alfredo</option>
    </select>

    <label for="size">Size Type:</label>
    <select name="size" id="size">
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
    </select>

    <label for="toppings">Toppings:</label>
    <input type="checkbox" name="toppings" value="pepperoni">Pepperoni
    <input type="checkbox" name="toppings" value="mushroom">Mushroom
    <input type="checkbox" name="toppings" value="onion">Onion

    <label for="address">Delivery Address:</label>
    <input type="text" name="address" id="address">

    <input type="submit" value="Submit">
</form>
</body>

</html>