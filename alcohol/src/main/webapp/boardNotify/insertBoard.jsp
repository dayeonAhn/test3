<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<left>
	
		<h2>다연 오늘 술마시러 간대요</h2>
		<td>관리자</td>
	<left>
			
		<div id="insBoard">
		<right>
        <tr>
            <th>조회수</th>
            <td>2</td>
        </tr>
        <tr>
            <th>날짜</th>
            <td>2024.08.01</td>
        </tr>
        </right>
        </div>
        
        <form action="insertBoard.do" method="post" enctype="multipart/form-data">
			<table border="1" cellpadding="0" cellspacing="0">
        <hr>
        
        <center>
        <tr>
            <th>본문</th>
            <td>
                
            </td>
        </tr>
			</table>
			<tr>
			<br>
        <a href="insertBoard.jsp">수정</a>
		<a href="deleteBoard_proc.do">삭제</a>
		</form>
	</center>
</body>
</html>