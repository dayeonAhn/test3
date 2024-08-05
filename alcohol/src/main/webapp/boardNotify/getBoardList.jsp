<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/style/temp.css">
</head>
<body>
 <jsp:include page="/common/header.jsp"></jsp:include>
    <div id="board">
         <title>공지사항</title>
        <h2>공지사항</h2>
    <table>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성날짜</th>
            <th>조회수</th>
        </tr>
        <tr>
            <td>1</td>
            <td>다연 오늘 술마시러 간대요</td>
            <td>관리자</td>
            <td>2024.08.01</td>
            <td>2</td>
        </tr>
        <tr>
            <td>2</td>
            <td>저 생일 이틀 남음 축하해줘</td>
            <td>이재성</td>
            <td>2024.08.01</td>
            <td>1</td>
        </tr>
        <tr>
            <td>3</td>
            <td>미쳤다 저는 초코케이크 좋아해요</td>
            <td>김의연</td>
            <td>2024.08.01</td>
            <td>1</td>
        </tr>
        <tr>
            <td>4</td>
            <td>배고파요 제로슈가 쿠키 더블초코 이거 맛있...</td>
            <td>이채윤</td>
            <td>2024.08.01</td>
            <td>1</td>
        </tr>
        <tr>
            <td>5</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>6</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>7</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <c:forEach items="${boardList }" var="board">
                <tr>
                    <td>${board.idx }</td>
                    <td>
                        <a href="getBoard.do?idx=${board.idx }">${board.title }</a> 
                    </td>
                    <td>${board.regDate }</td>
                    <td>${board.cnt }</td>
                    <td>${board.visitcount }</td>
                </tr>
            </c:forEach>
    </table>
        <br>
        <a href="insertBoard.jsp">작성</a>
    </div>
    <jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>