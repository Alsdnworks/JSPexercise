<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body><%

 		if (g.equals("google")) {
			response.sendRedirect("google.com");
		} else {
			response.sendRedirect("naver.com");}

%>
</body>
</html>
