<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>


<title>Session</title>
</head>
<body>

<%
Date nowTime = new Date();
String id = request.getParameter("id");
String pw = request.getParameter("passwd");
SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");

String today = sf.format(nowTime);
sf = new SimpleDateFormat("yyyy년MM월dd일 hh시 mm분 ss초");

today = sf.format(nowTime);
if(id.equals("admin") && pw.equals("admin1234")){
	session.setAttribute("userID", id);
	session.setAttribute("userPW", pw);
	out.println(id+"님 세션 설정이 성공했습니다.");
	long start_time = session.getCreationTime();
	
	out.println("세션생성시각(연월일)  : ");



}else{
	out.println("세션 연결에 실패했습니다.");
}
%>
<%=today %><br>
<a href="welcome.jsp">세션정보를_확인하는_페이지로_이동</a>

</body>
</html>