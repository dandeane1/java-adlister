<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order</title>
</head>
<body>

<div class="container">
    <h1>Pizza Order Form</h1>
    <form action="${pageContext.request.contextPath}/pizza-order" method="POST">
        <div class="form-group">
            <label for="crustType">Crust Type:</label>
            <select id="crustType" name="crustType" class="form-control">
                <option value="thin">Thin</option>
                <option value="thick">Thick</option>
                <option value="stuffed">Stuffed</option>
            </select>
        </div>
        <div class="form-group">
            <label for="sauceType">Sauce Type:</label>
            <select id="sauceType" name="sauceType" class="form-control">
                <option value="tomato">Tomato</option>
                <option value="bbq">BBQ</option>
                <option value="pesto">Pesto</option>
            </select>
        </div>
        <div class="form-group">
            <label for="sizeType">Size Type:</label>
            <select id="sizeType" name="sizeType" class="form-control">
                <option value="small">Small</option>
                <option value="medium">Medium</option>
                <option value="large">Large</option>
            </select>
        </div>
        <div class="form-group">
            <label>Toppings:</label>
            <div class="form-check">
                <input type="checkbox" id="toppingPepperoni" name="toppings" value="pepperoni" class="form-check-input">
                <label class="form-check-label" for="toppingPepperoni">Pepperoni</label>
            </div>
            <div class="form-check">
                <input type="checkbox" id="toppingMushroom" name="toppings" value="mushroom" class="form-check-input">
                <label class="form-check-label" for="toppingMushroom">Mushroom</label>
            </div>
            <div class="form-check">
                <input type="checkbox" id="toppingOlives" name="toppings" value="olives" class="form-check-input">
                <label class="form-check-label" for="toppingOlives">Olives</label>
            </div>
        </div>
        <div class="form-group">
            <label for="deliveryAddress">Delivery Address:</label>
            <input id="deliveryAddress" name="deliveryAddress" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Submit">
    </form>
</div>

</body>

</html>