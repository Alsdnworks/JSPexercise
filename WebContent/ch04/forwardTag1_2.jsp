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
�α��� ����
���̵�:<%=id %>
��й�ȣ:<%=pass %></h4>
</body>
</html>