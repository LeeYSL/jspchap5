<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 하는 페이지</title>
</head>
<body>
http://localhost:8080/jspchap5/forwardex1.jsp?id=test1234
<h2>forward 하는 페이지 입니다. 이 내용은 화면에 출력되지 않습니다.</h2>
<% pageContext.forward("forwardex2.jsp");%>
</body>
</html>