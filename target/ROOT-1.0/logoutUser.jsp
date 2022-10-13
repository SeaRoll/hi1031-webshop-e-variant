<%--
  Created by IntelliJ IDEA.
  User: Greattech
  Date: 10/12/2022
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.getSession().setAttribute("user", null);
    response.sendRedirect("index.jsp");
%>
