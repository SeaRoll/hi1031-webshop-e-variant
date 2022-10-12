<%@ page import="com.example.hi1031webshopevariant.ui.ItemDto" %>
<%@ page import="com.example.hi1031webshopevariant.business.ItemHandler" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<ItemDto> cart = (List<ItemDto>) request.getSession().getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
    }
    Integer clickedId = Integer.valueOf(request.getParameter("id"));
    ItemDto itemDto = ItemHandler.getById(clickedId);
    cart.add(itemDto);
    request.getSession().setAttribute("cart", cart);
    response.sendRedirect("index.jsp");
%>
