<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>

<body>
<h1>Login</h1>
<%
    String userName = request.getParameter("username");
    Date loginTime = (Date) request.getAttribute("loginTime");

%>

<h3> Hi <%=userName%></h3>
<h3>Login time: <%=loginTime%></h3>

</body>
</html>