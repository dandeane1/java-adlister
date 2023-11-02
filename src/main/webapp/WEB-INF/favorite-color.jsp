<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick your favorite color!</title>
</head>
<body>
<form action="favorite-color" method="post" >
    <label for="color">Pick your favorite color!
        <select name="color" id="color">
            <option value="blue">Blue</option>
            <option value="black">Black</option>
            <option value="pink">Pink</option>
        </select>
    </label>
    <input type="submit">
</form>
</body>
</html>
