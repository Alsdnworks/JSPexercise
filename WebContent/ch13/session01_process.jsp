<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("rorod") && user_pw.equals("1234")) {
			session.setAttribute("idKey", user_id);
			session.setAttribute("pwdKey", user_pw);
			out.println("세션이 생성되었습니다<br>");
		} else {
			out.println("세션 설정이 실패했습니다");
		}
	%>
				<a href="session_info.jsp">세션정보를_확인하는_페이지로_이동</a>
				<a href="session_info.jsp">세션정보를_확인하는_페이지로_이동</a>
				
	
</body>
</html>




			out.println("설정된 쿠키의 설명 [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("설정된 쿠키의 도메인 정보 [ " + i + " ] : " + cookies[i].getDomain() + "<br>");
			out.println("설정된 쿠키의 사용 가능한 시간 [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("설정된 쿠키의 속성 이름 [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("설정된 쿠키의 속성 디렉터리 정보 [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("설정된 쿠키의 보안 여부 [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("설정된 쿠키의 속성 값 [ " + i + " ] : " + cookies[i].getValue() + "<br>");
			out.println("설정된 쿠키의 버전 [ " + i + " ] : " + cookies[i].getName() + "<br>");