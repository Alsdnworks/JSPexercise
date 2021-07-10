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

		String depart = request.getParameter("depart");
	
		ResultSet rs = null;
		Statement stmt = null;
		
		try {
			String sql = "select * from student where depart = '" + depart + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				String depart2 = rs.getString("depart");
				
				if (depart.equals(depart2)) {
					sql = "delete from student where depart = '" + depart + "'";
					stmt = conn.createStatement();
					stmt.executeUpdate(sql);
					out.println("Student 테이블을 삭제했습니다.");
				} else
					out.println("Student 테이블을 삭제하지 못했습니다.");
			} else
				out.println("Student 테이블에 일치하는 학과가 없습니다.");
		} catch (SQLException ex) {
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)

				conn.close();

		}
	%>
	<br><br><a href="welcome.jsp">메인으로 돌아가기</a>
</body>
</html>