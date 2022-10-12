<%@ page import="com.example.hi1031webshopevariant.ui.dto.ItemDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<ItemDto> cart = (List<ItemDto>) request.getSession().getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
    }
    Integer clickedId = Integer.valueOf(request.getParameter("id"));
    ItemDto itemInCart = cart.stream().filter(itemDto -> itemDto.getId().equals(clickedId)).findFirst().get();
    cart.remove(itemInCart);
    request.getSession().setAttribute("cart", cart);
    response.sendRedirect("cart.jsp");
%>
