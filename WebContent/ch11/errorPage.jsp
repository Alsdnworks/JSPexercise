<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="isErrorPage.jsp"%>
<html>
<head>
<title>Exception</title>
</head>
<body>	 
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");

	if(id.equals("") || pw.equals("")){
	    throw new ServletException("오류 발생!!!");
	}else{
	%>
		
		<p> 아이디 : <%=id %>
		<p> 비밀번호 : <%=pw %>
		
	<%
	}
	%>
     

</body>
</html>