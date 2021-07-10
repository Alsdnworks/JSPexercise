<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>

		<%
			request.setCharacterEncoding("UTF-8");
			
			Enumeration paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String name = (String) paramNames.nextElement();
				out.print("" + name + ":\n");
				String paramValue = request.getParameter(name);
				out.println( paramValue + "<br>");
			}
		%>
</body>
</html>
