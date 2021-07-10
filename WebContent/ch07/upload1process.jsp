<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8", 	new DefaultFileRenamePolicy());
	Enumeration files = multi.getFileNames();

		String name1 = multi.getParameter("name1");
		String subject1 = multi.getParameter("subject1");		
		String name2 = multi.getParameter("name2");
		
		String file1 = (String) files.nextElement();
		String filetyp = multi.getContentType(file1);				
		String filename = multi.getFilesystemName(file1);		
		String fileorg = multi.getOriginalFileName(file1);	
		String file3 = multi.getParameter(file1);				
		File file = multi.getFile(file1);				

	%>
	<table border="1">
		<tr>
			<th width="100">이름</th>
						<th width="100"><%=name1 %></th>
		<tr>	
			<th width="100">주 소</th>
						<th width="100"><%=subject1 %></th>
		<tr>	
			<th width="100">설 명</th>
						<th width="100"><%= name2%></th>
		<tr>		
			<th width="100">저장 파일 이름</th>
					<th width="100"><%=filename %></th>
							<tr>		
			<th width="100">요청 파라미터 이름</th>
					<th width="100"><%=file1 %></th>
		<tr>	
			<th width="100">실제 파일 이름</th>
						<th width="100"><%=fileorg %></th>
		<tr>	
			<th width="100">파일 컨텐츠 유형</th>
					<th width="100"><%=filetyp %></th>
		<tr>	
             	<th width="100">파일 크기</th>
					<th width="100"><%=file1.length() %></th>
		<tr>	
	</table>
</body>
</html>