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
</body>

<footer>
    <div id="wrap">
        <div class="imageFoot"><img src="/images/Logo.png" alt="로고사진"></div>
        <p>혼술러 주식회사  대표이사 우파루파본사 <br>
        자랑스러운 인천광역시 한림읍 금능농공길 228 동호 38빌딩 6층호스팅 제공자 (주)아임웹 사업자등록번호 616-86-27415 통신판매업신고번호 제 2020-디버그한림-0101 호고객센터 02-1234-4321 drinkDebug@jhonsullu.co.kr <br>

        경고 : 지나친 음주는 뇌졸중, 기억력 손상이나 치매를 유발합니다. 임신 중 음주는 기형아 출생 위험을 높입니다. <br>
        <b>COPYRIGHT 2021@ HONSULLU COMPANY</b>
        </p>
    </div>    
</footer>
</html>