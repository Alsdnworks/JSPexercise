<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta charset="UTF-8">
<%@ page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<title>Cookie</title>
</head>
<body>
	<%
	Date nowTime = new Date();
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");
	SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmm");
	String today = sf.format(nowTime);
	SimpleDateFormat cf = new SimpleDateFormat("yyyyMMddHHmm");
	String time = cf.format(nowTime);
	sf = new SimpleDateFormat("오늘은yyyy-MM-dd일 입니다");
	cf = new SimpleDateFormat("현재시각은hh:mm입니다.");

	today = sf.format(nowTime);
	time = cf.format(nowTime);

		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin") && user_pw.equals("admin1234")) {
			Cookie cookie_id = new Cookie("userID", user_id);
			Cookie cookie_pw = new Cookie("userPW", user_pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.println(today+"<br>"+time+"<br>"+user_id+"님 쿠키 생성이 성공했습니다<br>");

	
		} else {
			out.println("쿠키 생성이 실패했습니다");
		}
	%>

		
	
	<a href="cookie02.jsp">다음_페이지로_이동</a>
</body>
</html>