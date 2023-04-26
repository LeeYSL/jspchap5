<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
</head>
<body>
<%
 List<String> cart=(List<String>)session.getAttribute("cart"); // getAttribute의 리턴 타입은 오브젝트 타입이기 때문에 list로 형변환? 객체는 list 자료형은 오브젝트
   if(cart == null || cart.size() ==0) {
%> <h3>장바구니 상품이 없습니다.</h3>	   
<% } else { %>
<h3>장바구니 상품</h3>
<% for(String p : cart) {%>
    <h4><%=p %></h4>
    <% }}
    session.removeAttribute("cart");
    %>
</body>
</html>