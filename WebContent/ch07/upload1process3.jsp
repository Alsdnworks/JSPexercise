<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
  

  <%
StringBuffer name = new StringBuffer("name");
StringBuffer address = new StringBuffer("address");
StringBuffer email = new StringBuffer("email");
StringBuffer sex = new StringBuffer(request.getParameter("sex"));
%>
        <table>
        <tr>
        	<td>이름</td>
            <td>"StringBuffer name()"</td>
        </tr>
         <tr>
        	<td>주소</td>
            <td>address()</td>
        </tr>
         <tr>
        	<td>성별</td>
            <td>sex() </td>
        </tr>
    </table>
    </body>
</html>


