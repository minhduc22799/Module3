<%--
  Created by IntelliJ IDEA.
  User: Minh Duc
  Date: 11/28/2022
  Time: 11:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>View customer</title>
</head>
<body>
<h1>Customer details</h1>
<p>
  <a href="/products">Back to customer list</a>
</p>
<table>
  <tr>
    <td>Name: </td>
    <td>${requestScope["product"].getName()}</td>
  </tr>
  <tr>
    <td>Price: </td>
    <td>${requestScope["product"].getPrice()}</td>
  </tr>
  <tr>
    <td>Description: </td>
    <td>${requestScope["product"].getDescription()}</td>
  </tr>
  <tr>
    <td>Producer: </td>
    <td>${requestScope["product"].getProducer()}</td>
  </tr>

</table>
</body>
</html>
