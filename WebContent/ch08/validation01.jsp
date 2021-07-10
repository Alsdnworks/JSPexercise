<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
function checkLogin( ){
var form = document.loginForm;  


		if (form.id.value == "") {
			alert("아이디를 입력해주세요.");
			form.id.select();
			return false;		} 
		if (form.passwd.value == "") {
			alert("비밀번호를 입력해주세요");
			form.passwd.select();
			return false;		} 
		
		if (form.title.value == "") {
			alert("제목을입력하십시오.");
			form.title.select();
			return false;		}	
		
		for (i=0; i<form.id.value.length; i++){
			var ch = form.id.value.charAt(i);
			if((ch<'a'||ch>'z') && (ch>'A'||ch<'Z')&& (ch>'0'||ch<'9')){
			alert("아이디는 영문자로 입력 가능합니다");
			form.id.select();
			return false;		}}
		
		if(form.passwd.value.length<5){
			alert("비밀번호는   5자 이상으로 입력해야 합니다");
			form.passwd.select();
			return false;		}
		
		 if(!isNan(form.title.value.substr(0,1))){
			alert("제목은 숫자로 시작할수없습니다.");
			form.title.select();
			return false;
		}
		

		form.submit();
	}
</script>
<body>

<form action="validation01_process.jsp" name="loginForm" method="post"> 
<p> 아이디 : <input type="text" name="id">
<p> 비밀번호 : <input type="password" name="passwd">
<p>	제목 : <input type="text" name="title">
<input type="submit" value="전송" onclick="checkLogin();">
</form>
</body>
</html>