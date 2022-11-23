<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
    <title>Chiet Khau</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Vietnamese Dictionary</h2>
<form method="post" action="/product-servlet">
    <input type="text" name="des" placeholder="Des"/>
    <input type="text" name="price" placeholder="Price "/>
    <input type="text" name="discount" placeholder="Discount"/>
    <input type = "submit" id = "submit" value = "Calculate Discount"/>
</form>
</body>
</html>
