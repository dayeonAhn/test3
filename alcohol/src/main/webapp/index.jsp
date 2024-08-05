<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/style/temp.css">
<title>Insert title here</title>
</head>
<body>
    <div id="wrap">
        <header class="header">
            <div class="logo"></div>
            <div class="auth-links">
                <a class="login" href="/member/Login.jsp">로그인</a>
                <a class="signup" href="/member/joinMember.jsp">회원가입</a>
            </div>
        </header>
        <div class="menu">
            <ul>
	            <li>
					<img src="/resources/images/icon.png"/>            	
	            </li>	
                <li class="menu-item menu-item-1">
                    <a href="#">혼술 장터</a>
                    <ul class="submenu-item-1">
                        <li><a href="#">맥주</a></li>
                        <li><a href="#">막걸리</a></li>
                        <li><a href="#">와인</a></li>
                        <li><a href="#">증류주</a></li>
                        <li><a href="#">사케</a></li>
                    </ul>
                </li>
                <li class="menu-item menu-item-2">
                    <a href="#">혼술 취향</a>
                    <ul class="submenu-item-2">
                        <li><a href="#">혼술 걸음마</a></li>
                        <li><a href="#">술BTI</a></li>
                    </ul>
                </li>
                <li class="menu-item menu-item-3">
                    <a href="#">혼술 알려주소</a>
                </li>
                <li class="menu-item menu-item-4">
                    <a href="#">혼술 대화방</a>
                    <ul class="submenu-item-4">
                        <li><a href="#">문의사항</a></li>
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">커뮤니티</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="content">
            <img src="../resources/images/wine.jpg" alt="Wine" width="1280" height="400"/>
        </div>
		<div class="best5-section">
		    <h2>Best 5</h2>
		    <div class="best5-container">
		        <div class="best5-card">
		            <img src="../resources/images/alchol1.PNG" alt="헤네시 XO" class="best5-img"/>
		            <div class="best5-info">
		                <p class="best5-name">헤네시 XO</p>
		                <p class="best5-price">420,000원</p>
		            </div>
		        </div>
		        <div class="best5-card">
		            <img src="../resources/images/alchol2.png" alt="돔 페리뇽 빈티지 2013" class="best5-img"/>
		            <div class="best5-info">
		                <p class="best5-name">돔 페리뇽 빈티지 2013</p>
		                <p class="best5-price">380,000원</p>
		            </div>
		        </div>
		        <div class="best5-card">
		            <img src="../resources/images/alchol3.PNG" alt="아르 페일 에일" class="best5-img"/>
		            <div class="best5-info">
		                <p class="best5-name">아르 페일 에일</p>
		                <p class="best5-price">5,000원</p>
		            </div>
		        </div>
		        <div class="best5-card">
		            <img src="../resources/images/alchol4.PNG" alt="보늬달밤" class="best5-img"/>
		            <div class="best5-info">
		                <p class="best5-name">보늬달밤</p>
		                <p class="best5-price">2,800원</p>
		            </div>
		        </div>
		        <div class="best5-card">
		            <img src="../resources/images/alchol5.PNG" alt="필스너 우르켈" class="best5-img"/>
		            <div class="best5-info">
		                <p class="best5-name">필스너 우르켈</p>
		                <p class="best5-price">5,000원</p>
		            </div>
		        </div>
		    </div>
		</div>

        <div class="instagram-section">
            <p>혼술러 공식 인스타그램 계정에서</p> 
            <p>혼술러의 신제품, 이벤트 소식을 받아보실 수 있습니다.</p>
            <p>@hsl1234</p>
            <a href="#" target="_blank" class="insta-button">바로가기</a>
        </div>
        
       	<div class="recommendations-section">
		    <h2>#이_달의_추천</h2>
		    <div class="recommendation-container">
		        <div class="recommendation">
		            <img src="../resources/images/rec_alchol1.PNG" alt="호랑이 유자 막걸리" class="recommendation-img"/>
		            <div class="recommendation-info">
		                <p class="recommendation-name">호랑이 유자 막걸리</p>
		                <p class="recommendation-tags">#상큼달달 #청량함</p>
		            </div>
		        </div>
		        <div class="recommendation">
		            <img src="../resources/images/rec_alchol2.PNG" alt="오트밀 스타우트" class="recommendation-img"/>
		            <div class="recommendation-info">
		                <p class="recommendation-name">오트밀 스타우트</p>
		                <p class="recommendation-tags">#깔끔한바디감 #고소씁쓸</p>
		            </div>
		        </div>
            </div>
        </div>
        <footer>
		    <div id="wrap">
		        <div class="imageFoot"><img src="/resources/images/Logo.png" alt="로고사진"></div>
		        <p>혼술러 주식회사  대표이사 우파루파본사 <br>
		        자랑스러운 인천광역시 한림읍 금능농공길 228 동호 38빌딩 6층호스팅 제공자 (주)아임웹 사업자등록번호 616-86-27415 통신판매업신고번호 제 2020-디버그한림-0101 호고객센터 02-1234-4321 drinkDebug@jhonsullu.co.kr <br>
		
		        경고 : 지나친 음주는 뇌졸중, 기억력 손상이나 치매를 유발합니다. 임신 중 음주는 기형아 출생 위험을 높입니다. <br>
		        <b>COPYRIGHT 2021@ HONSULLU COMPANY</b>
		        </p>
		    </div>    
		</footer>
    </div>
</body>
</html>
