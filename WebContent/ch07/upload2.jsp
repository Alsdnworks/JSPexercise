<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<form action="upload1process2.jsp" method="post" enctype="multipart/form-data">
		<p>	이 름  : <input type="text" name="name"> 
		<p>주 소 : <input type="text" name="adress"> 
		<p>파 일 : <input type="file" name="filename">
		<p>설명 : <input type="text" name="explan"> 
		
		<p>	<input type="submit" value="파일 올리기">
		</p>
	</form>
</body>
</html>

