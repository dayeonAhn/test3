<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/style/temp.css">
<script src="/resources/script/js.js"></script>
</head>
<body>
	<div id="wrap">
	
	    <div class="imageSec"><img src="/resources/images/Logo.png" alt="로고사진"></div>
	    
		<form action="/joinMem.do" method="post" onsubmit="return validateForm(this)">
		
			<div class="joinId">
	        <b>아이디</b>
	        <input type="text" id="id" name="id">
	        <%-- <input type="button" id="idChk" value="중복확인"> --%>
	    </div>
	
	    <div class="joinPwd">
	        <b>비밀번호</b>
	        <input type="password" id="pwd" name="pwd">
	    </div>
	
	    <div class="joinPwdChk">
	        <b>비밀번호 확인</b>
	        <input type="password" id="pwdChk">
	    </div>
	
	    <div class="joinName">
	        <b>성명</b>
	        <input type="text" id="name" name="name">
	    </div>
	
	    <div class="joinPhone">
	        <span>'-'빼고 숫자만 입력하세요</span>
	        <b>휴대폰 번호</b>
	        <input type="text" id="phone" name="phone">
	    </div>
	
	    <div class="joinAddress">
	        <b>주소</b>
	        <input type="text" id="address" name="address">
	    </div>
	
	    <div class="joinEmail">
	        <b>이메일</b>
	        <input type="text" name="email" id="email">
	        <em>@</em>
	        <select name="emailSelect">
	            <option>---선 택---</option>
	            <option value="naver.com">naver.com</option>
	            <option value="gmail.com">gmail.com</option>
	            <option value="daum.net">daum.net</option>
	            <option value="nate.com">nate.com</option>
	        </select>
	    </div>
	    <input type="submit" value="회원가입 완료">
					
		</form>
	
	
	</div>

</body>
</html>