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
        <div class="imageSec"><a href="/"><img src="/resources/images/Logo.png" alt="로고사진"></a></div>

	<form class="loginFrm" action="/login.do" method="post" onsubmit="return valForm(this)">
		<input type="text" class="joinId" id="id" name="id" placeholder="아이디를 입력하세요"/>
        <input type="password" class="joinPwd" id="pwd" name="pwd" placeholder="비밀번호를 입력하세요"/>
        <div>
            <a href="findId.jsp" >아이디</a>
            <a href="findPwd.jsp" >비밀번호</a>
            <span>찾기</span>
        </div>

        <input type="submit" value="로그인">
	</form>
         <span class="noMem"><a href="joinMember.jsp">회원이 아니신가요?</a></span>
    </div>
</body>
</html>