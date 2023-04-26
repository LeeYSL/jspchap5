<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 객체 예제</title>
</head>
<body>
<% 
  // 최종 접송 시간 기준 10초 이후에는 새로운 session으로 교체
  session.setMaxInactiveInterval(10);//session 유지 시간 10초 설정,초 단위(밀리초 단위 아님)
  //톰캣인 경우 기본 시간 30분
%>
<h3>session 정보 : 브라우저별로 session이 할당됨<br>
                 클라이언트 정보 저장 기능을 가짐</h3>
isNew() : <%=session.isNew() %><br><%--session 객체 교체 된거야? --%>
생성시간   :<%=session.getCreationTime()%><br><%--session 객체가 생성된 시간,처음 세션이 교체 된 시간,밀리초로 표시--%>
최종접속시간 :<%=session.getLastAccessedTime() %><br>
session id :<%=session.getId()%><br><%--session 별로 고유의 id값 --%>  
</body>
</html>