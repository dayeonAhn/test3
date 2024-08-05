<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/temp.css">
    <script src="/resources/script/js.js"></script>
    
    <script>
        // JavaScript function to toggle image source
        function toggleImage(imgElement) {
            if (imgElement.src.includes("heart1.png")) {
                imgElement.src = "./resources/images/heart2.png";
            } else {
                imgElement.src = "./resources/images/heart1.png";
            }
        }
    </script>
    
    
</head>
<body>

    <h2>커뮤니티</h2>
    
    <div id="comm">
        <table class="commtable">
            <tr>
                <th>제목</th>
                <th>작성자</th>
                <th>작성날짜</th>
                <th>조회수</th>
                <th><img src="./resources/images/heart1.png" alt="좋아요"></th>
            </tr>
            
            <c:choose>
		    	<c:when test="${empty comboardList }">
				    <tr>
				        <td colspan="5" align="center">
				            -- 등록된 게시물이 없습니다 --
				        </td>
				    </tr>
			    </c:when>
			    <c:otherwise>
			    	<c:forEach items="${comboardList}" var="comboard">
		                <tr>
		                    <td>
		                        <a href="getComBoard.do?idx=${comboard.idx}">${comboard.title}</a> 
		                    </td>
		                    <td>${comboard.name}</td>
		                    <td><fmt:formatDate value="${comboard.postdate}" pattern="yyyy-MM-dd" /></td>
		                    <td>${comboard.visitcount}</td>
		                    <td><img src="./resources/images/heart1.png" alt="좋아요" onclick="toggleImage(this)"/></td>
		                </tr>
		            </c:forEach>
		    	</c:otherwise>
		    </c:choose>
        </table>
        
        
        
        <!-- 페이징 처리 -->
        <div id="pagination" style="text-align: center; margin-top: 20px;">
            <!-- 이전 페이지 링크 -->
            <c:if test="${currentPage > 1}">
                <a href="getComBoardList.do?page=${currentPage - 1}">&lt;</a>
            </c:if>
            
            <!-- 페이지 번호 링크 -->
            <c:forEach begin="1" end="${totalPages}" var="i">
                <a href="getComBoardList.do?page=${i}" 
                   style="${i == currentPage ? 'font-weight: bold;' : ''}">
                   [${i}]
                </a>
            </c:forEach>
            
            <!-- 다음 페이지 링크 -->
            <c:if test="${currentPage < totalPages}">
                <a href="getComBoardList.do?page=${currentPage + 1}">&gt;</a>
            </c:if>
        </div>
        
        <div id="pag">
			<button class="insert" type="button" onclick="location.href='insertComBoard.jsp'">작성</button>
		</div>

    </div>

    
</body>
</html>