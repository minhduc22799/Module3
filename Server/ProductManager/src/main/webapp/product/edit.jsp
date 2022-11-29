<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit Product</title>
</head>
<style>
  a{
    font-weight: bold;
    color: black;
  }
</style>
<body>
<h1>Edit product</h1>
<p>
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/products">Back to product list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Product information</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
      </tr>
      <tr>
        <td>Category: </td>
        <td><select  name="list-category">
          <option hidden selected value="${requestScope["product"].getCategory().getId()}">${requestScope["product"].getCategory().getName()}</option>
          <c:forEach  items='${requestScope["categories"]}' var="category">
            <option value=${category.getId()} >${category.getName()}</option>
          </c:forEach>
        </select></td>
      <tr>
        <td>Address: </td>
        <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update customer"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>