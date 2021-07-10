<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkMember() {
		var form = document.Member;
		var regExpId=/^[a-z]*$/;

		var regExpJm =/^[d{6}-\d{7}]*$/;
		var regExpPhone =/^\d{3}-\d{2,3}-\d{4}$/;
		var regExpPasswd=/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
		var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

		var passwdCheck = form.passwdCheck.value;
		var id = form.id.value;
		var Jm = form.Jm1.value + "-" + form.Jm2.value;
		var passwd = form.passwd.value;
		var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
		var email = form.email.value;		

		if (!regExpId.test(id)) {
			alert("아이디는 영문소문자로 시작해 주세요!");
			return;
		}
		if (!regExpPasswd.test(passwd)) {
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다!");
			return;
		}  else if (passwd != passwdCheck) {
			alert("비밀번호를 다시 확인해주세요!");
			return;
		}
		if (!regExpPhone.test(phone)) {
			alert("연락처 입력을 확인해 주세요!");
			return;
		}
		if (!regExpjm.test(Jm)) {
			alert("주민번호 입력을 확인해 주세요!");
			return;
		}
		if (!regExpEmail.test(email)) {
			alert("이메일 입력을 확인해 주세요!");
			return;
		}
		form.submit();
	}
</script>
<body>
	<h3>Vaildation2</h3>
	<form action="validation02_process.jsp" name="Member" method="post">
		<p>	아이디 : 
		    <input type="text" name="id">
		<p>	비밀번호 : 
		    <input type="password" name="passwd">
		<p> 비밀번호 확인 : 
		    <input type="password" name="passwdCheck">		
		<p>	주민등록번호 : 
		    <input type="text" maxlength="6" size="6" name="jm1"> -
			<input type="text" maxlength="7" size="7" name="jm2">
		<p>	연락처 : 
			<input type="text" maxlength="3" size="3" name="phone1"> -
			<input type="text" maxlength="4" size="4" name="phone2"> -
			<input type="text" maxlength="4" size="4" name="phone3">
		<p>	이메일 : 
		    <input type="text" name="email">		
		<p>	<input type="button" value="전송" onclick="checkMember()">
	</form>
</body>
</html>