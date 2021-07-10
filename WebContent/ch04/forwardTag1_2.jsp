<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>
<%
String id =request.getParameter("id");
String pass =request.getParameter("pass");
%>>
로그인 성공
아이디:<%=id %>
비밀번호:<%=pass %></h4>
</body>
</html>