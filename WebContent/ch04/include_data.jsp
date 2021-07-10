<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
    String number=request.getParameter("dan");    
	int dan=Integer.parseInt(number);
	for(int i =1;i<=9;i++){	
	out.println(dan+"*"+i+"="+dan*i+"<br>");
		}
	%>
</body>
</html>