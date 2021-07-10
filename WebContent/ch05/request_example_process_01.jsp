<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<p><h1>Request Example 1</h1></p>

	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String password = request.getParameter("passwd");
		String ge = request.getParameter("gen");
		String ma = request.getParameter("maj");


	%>
	<p>	아이디 : <%=userid%>
	<p>	비밀번호 : <%=password%>
		<p>	성별 : <%=ge%>
		<p>	전공 : <%=ma%>
	
</body>
</html>