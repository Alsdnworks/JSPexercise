<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Directive Example 4</title>
</head>
<body>
<h1>Directive Example 4</h1>
<%@include file="directive_top.jsp" %><hr>
<p>include지시자의 BODY부분입니다.</p><hr>
<%@include file="directive_Bottom.jsp" %><hr>
<p>Today: <%=new java.util.Date() %></p>
</body>
</html>