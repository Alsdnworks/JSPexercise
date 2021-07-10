<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();

		for (int i = 0; i < cookies.length; i++) {
			response.addCookie(cookies[i]);
		}
		response.sendRedirect("cookie04.jsp");
	%>
</body>
</html>