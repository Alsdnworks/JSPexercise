<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>구구단 출력하기</h4>
<jsp:include page="include_data.jsp"  flush="false">
<jsp:param name="dan" value="5"/>
</jsp:include>
</body>
</html>