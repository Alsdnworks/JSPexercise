<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String num = request.getParameter("num");
	String pwd = request.getParameter("pwd");
	String depart = request.getParameter("depart");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	Statement stmt = null;

	try {
		String sql = "insert into student(num, pwd, depart, name, address, phone, email) values('" + num + "','" + pwd + "','" + depart + "','" + name + "','" + address + "','" + phone + "','" + email + "')";
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		out.println("Member 테이블 삽입이 성공했습니다.");
	} catch (SQLException ex) {
		out.println("Member 테이블 삽입이 실패했습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
		if (stmt != null)
			stmt.close();
		if (conn != null)
			conn.close();
	}
%>
	<br><br><a href="welcome.jsp">메인으로 돌아가기</a>

</body>
</html>
