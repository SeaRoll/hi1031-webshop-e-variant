<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="includes/nav.jsp"/>
<h1>Register</h1>
<br/>
<form action="registerUser.jsp">
    <label for="username">Username</label>
    <input type="text" name="username" id="username">
    <label for="password">Password</label>
    <input type="password" name="password" id="password">
    <button type="submit">Login</button>
</form>

</body>
</html>