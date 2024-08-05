<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/resources/style/temp.css">
    <title>게시판</title>  
</head>
<body>
	<div id="insertBoard">
    <jsp:include page="/common/header.jsp"></jsp:include>

    <div id="headerNo">
        <img src="/resources/images/menu.png" alt="Menu">
        <h2>다연 오늘 술마시러 간대요</h2>
    </div>

    <div id="infoNo">
        <span>관리자</span>
        <span>조회수: 2 | 2024.08.01</span>
    </div>

    <hr>

    <div id="contentNo">
        <strong>본문 내용</strong>
        <!-- 본문 내용이 들어갈 부분 -->
    </div>

    <hr>

    <div id="buttonsNo">
        <a href="insertBoard.jsp">수정</a>
        <a href="deleteBoard_proc.do">삭제</a>
    </div>
</div>
    <jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>