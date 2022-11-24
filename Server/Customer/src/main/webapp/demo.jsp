
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <style>
    th,tr,td{
      text-align: center;
      padding: 50px;
    }
  </style>
  <title>Customer</title>
</head>
<body>
<h1 style="text-align: center">Danh Sách Khách Hàng </h1>
<table>
  <tr>
    <th>Tên</th>
    <th>Ngày Sinh</th>
    <th>Địa chỉ</th>
    <th>Ảnh</th>
  </tr>

  <c:forEach items="${customers}" var="c">
    <tr>
      <td><c:out value="${c.getName()}"/></td>
      <td><c:out value="${c.getBirth()}"/></td>
      <td><c:out value="${c.getAddress() }"/></td>
      <td><img width="10%" src="${c.getImage()}"/></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>