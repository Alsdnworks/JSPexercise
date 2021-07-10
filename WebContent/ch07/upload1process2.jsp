<%@page contentType="text/html; charset=utf-8"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>


<html>
<head>
<title>File Upload</title>
</head>
<body>
	<table border="1">

	<%
	String path = "C:\\upload";

	DiskFileUpload upload = new DiskFileUpload();

	List items = upload.parseRequest(request);

	Iterator params = items.iterator();
		while (params.hasNext()) {
			FileItem item = (FileItem) params.next();

			if (item.isFormField()) {
				String name = item.getFieldName();
				String value = item.getString("utf-8");
				out.println("<tr><td>"+name + "</td><td>" + value + "</td></tr>");
			} else {
				String fileFieldName  = item.getFieldName();				
				String fileName = item.getName();
				String contentType = item.getContentType();

				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize();

				File file = new File(path + "/" + fileName);
				item.write(file);

				out.println("<tr><td>요청 파라미터 이름 </td><td> " + fileFieldName  + "</td><tr>");
				out.println("<tr><td>저장 파일 이름 </td><td> " + fileName + "</td><tr>");
				out.println("<tr><td>파일 콘텐츠 타입</td><td> " + contentType + "</td><tr>");
				out.println("<tr><td>파일 크기</td><td> " + fileSize+"</td><tr>");		
	
			}}
		%>
</table>
</body>
</html>