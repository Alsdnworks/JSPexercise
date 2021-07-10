<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="upload1process.jsp">
		<p>	이 름  : <input type="text" name=""> 
		<p>주 소 : <input type="text" name="subject1"> 
		<p>파 일 : <input type="file" name="filename1">
		<p>	설 명  : <input type="text" name="name2"> 
		<p>	<input type="submit" value="파일 올리기">
		</p>
	</form>
</body>
</html>
