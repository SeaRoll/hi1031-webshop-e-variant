<%@ page import="com.example.hi1031webshopevariant.business.UserHandler" %>
<%@ page import="com.example.hi1031webshopevariant.ui.UserDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    UserDto userDto = UserHandler.loginUser(username, password);
    request.getSession().setAttribute("user", userDto);
    response.sendRedirect("index.jsp");
%>
