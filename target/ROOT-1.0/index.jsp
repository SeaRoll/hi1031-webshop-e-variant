<%@ page import="com.example.hi1031webshopevariant.ui.dto.ItemDto" %>
<%@ page import="com.example.hi1031webshopevariant.business.ItemHandler" %>
<%@ page import="java.util.Collection" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Collection<ItemDto> items = ItemHandler.getAll();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Homepage</title>
</head>
<body>
<jsp:include page="includes/nav.jsp"/>
<h1>Products</h1>
<br/>
<table>
    <thead>
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Action</td>
    </tr>
    </thead>
    <tbody>
    <%
        for (ItemDto item : items) {
    %>
    <tr>
        <td>
            <%= item.getName()%>
        </td>
        <td>
            <%= item.getPrice()%>:-
        </td>
        <td>
            <%= item.getDescription()%>
        </td>
        <td>
            <a href="addToCart.jsp?id=<%=item.getId()%>">Add to cart</a>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>

</body>
</html>