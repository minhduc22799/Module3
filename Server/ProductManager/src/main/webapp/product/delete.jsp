<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Deleting product</title>
</head>
<style>
  a{
    font-weight: bold;
    color: black;
  }
</style>
<body>
<h1>Delete product</h1>
<p>
  <a href="/products">Back to customer list</a>
</p>
<form method="post">
  <h3>Are you sure?</h3>
  <fieldset>
    <legend>Product information</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
      </tr>
      <tr>
        <td>Category: </td>
        <td>${requestScope["product"].getCategory().getName()}</td>
      </tr>
      <tr>
        <td>Address: </td>
        <td>${requestScope["product"].getPrice()}</td>
      </tr>
      <tr>
        <td><input type="submit" value="Delete product"></td>
      </tr>
    </table>
  </fieldset>
  </form>
</body>
</html>