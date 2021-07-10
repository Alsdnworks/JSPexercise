<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>I작성tle here</title>
</head>
<%! String str = "Hello, Java Server Pages";
	String getString(String str)
	{
		return str;
	}
%>
<body>

<% out.print(getString(str)); %>

</body>
</html>