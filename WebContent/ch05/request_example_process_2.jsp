<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title></title>
</head>
<body>
    전송된 요청 파라미터:<%=request.getParameter("id") %><br><br>
    <%=request.getParameterValues("password") %><br><br>
    <%=request.getParameterNames() %><br><br>
    <%=request.getParameterMap() %><br><br>
</body>
</html>
