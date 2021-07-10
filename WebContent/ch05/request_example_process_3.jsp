<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title></title>
</head>
<body>
	<form action="request_example_3.jsp" method="post">

		<%
			response.setIntHeader("Refresh", 1);
		%>
	<p>	<%=(new java.util.Date())%>
	        <p> <input type="text" value="g"name="g">
	        <p> <input type="submit" value="naver"name="n">
</form>

</body>
</html>
