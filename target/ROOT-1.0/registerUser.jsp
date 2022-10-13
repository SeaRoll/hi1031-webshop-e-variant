<%@ page import="com.example.hi1031webshopevariant.business.UserHandler" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    UserHandler.registerUser(username, password);
    response.sendRedirect("login.jsp");
%>
