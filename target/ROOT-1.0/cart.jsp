<%@ page import="com.example.hi1031webshopevariant.ui.dto.ItemDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    List<ItemDto> cart = (List<ItemDto>) request.getSession().getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
        request.getSession().setAttribute("cart", cart);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Homepage</title>
</head>
<body>
<jsp:include page="includes/nav.jsp"/>
<h1>Cart</h1>
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
        for (ItemDto item : cart) {
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
            <a href="removeFromCart.jsp?id=<%=item.getId()%>">Remove from cart</a>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>

</body>
</html>