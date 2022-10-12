<%@ page import="com.example.hi1031webshopevariant.ui.UserDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul>
    <li><a href="index.jsp">Home</a></li>
    <li><a href="cart.jsp">Cart</a></li>
    <li>
        <%
            UserDto user = (UserDto) request.getSession().getAttribute("user");
            if (user == null) {
        %>
        <a href="/login.jsp">Login</a>
        <a href="/register.jsp">Register</a>
        <%
        } else {
        %>
        <a href="/logoutUser.jsp">Hello <%= user.getUsername()%>! Click here to logout</a>
        <%
            }
        %>
    </li>
</ul>
