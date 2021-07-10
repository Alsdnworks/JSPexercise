<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<form action="request_example_process_01.jsp" method="post">
		<p>	아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="text" name="passwd">
		<p>	성별 :
		
		  <input type="radio" id="남자" name="gen" value="남자">
  			<label for="남자">남자</label>
  		  <input type="radio" id="여자" name="gen" value="여자">
 		 <label for="여자">여자</label>
		

		
		<p>	전공 : <select name="maj" >
   							 <option selected value="체육학과"> 체육학과 </option> 
   							 <option value="ㅇㅇ학과"> ㅇㅇ학과 </option> 
   							 <option value="ㄱㄱ학과"> ㄱㄱ학과 </option> 
   							 <option value="ㅁㅁ학과"> ㅁㅁ학과 </option> 
							</select>  
		
		<p>	<input type="submit" value="전송" />
	</form>
</body>
</html>