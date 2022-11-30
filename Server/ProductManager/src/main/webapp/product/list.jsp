<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<style>
    a{
        text-decoration: none;
        color: black;

    }

</style>
<body>
<h1>Products</h1>
<p>
    <a href="/products?action=create">Create new products</a>
</p>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Category</th>
        <th>Price</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td>${product.getId()}</td>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getCategory().getName()}</td>
            <td>${product.getPrice()}</td>
            <td><a style="color: blue" href="/products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a style="color: red" href="/products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>