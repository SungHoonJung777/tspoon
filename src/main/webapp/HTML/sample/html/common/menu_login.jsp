
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/common/menu_login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:14:11 GMT -->
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
	<meta name="format-detection" content="telephone=no, address=no" />
	<title>T 클래스</title>
	<script src="/milkT/HTML/include/js/jquery-3.4.1.min.js"></script>
	<script src="/milkT/HTML/include/js/ui.js"></script>
	<script src="/milkT/HTML/include/js/chart.js"></script>
	<script src="/milkT/HTML/include/js/swiper.js"></script>
	<script src="/milkT/HTML/include/js/aos.js"></script>
	<link rel="stylesheet" type="text/css" href="../../include/css/common.css" />
	<link href="/milkT/HTML/include/css/aos.css" rel="stylesheet">

    	
   
</head>
<body>
			<span class="btnSide"><a href="#" onclick="openNav()">전체메뉴 열기</a></span>
		</div>
		<!--//해더영역-->
		<!--전체메뉴//-->
		<div id="mySidenav" class="sidenav" >
			<!--전체메뉴 해더//-->
			<div class="navHeader">
				<span class="closebtn"><a href="javascript:void(0)" onclick="closeNav()">전체메뉴 닫기</a></span>
				<h2><a href="/milkT/kmocMain.do?command=main">T CLASS</a></h2>
				<span class="setBtn"><a href="#none" onclick="alert('환경설정 APP');return false;">환경설정</a></span>
			</div>
			<!--//전체메뉴 해더-->
			<!--전체메뉴 컨텐츠//-->
			<div class="navContent">
				<div class="userStatus">
					<c:choose>
		                 		<c:when test="${fileLists[4].orgFile eq null || fileLists[4].orgFile eq 'null' || fileLists[4].orgFile eq '' }">
		                 			  <p class="myPhoto"><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" style="width: 50px; border-radius: 4px;" alt="내 프로필 이미지" /></p>

		                 			
		                 		</c:when>
		                 		<c:otherwise>
		                 				<p class="myPhoto"><img src="/milkT/img/${fileLists[4].orgFile}" style="width: 50px; border-radius: 4px;" alt="내 프로필 이미지" /></p>

		                 		</c:otherwise>
		                 	</c:choose>
				
				
					<c:choose>
						<c:when test="${memberName eq null}">
							
						</c:when>
						<c:otherwise>
							<p class="name">${memberName} </p>
						</c:otherwise>
					</c:choose>
					<button class="btnLogOut" onclick="logout()">로그아웃</button>

					
				</div>
				<div class="menuStyle_01 nochild"><!--nochild 자녀 미등록시 해당 클래스 추가하여 자녀등록 버튼만 활성화-->
					<ul>
						<li class="menu_message"><a href="/milkT/kmocMain.do?command=mail">쪽지<span>+99</span></a></li>
						<li class="menu_board"><a href="/milkT/kmocMain.do?command=board">1:1<br>게시판</a></li>
						<li class="menu_child"><a href="/milkT/kmocMain.do?command=editForm">개인정보수정<br></a></li>
						<li class="menu_propose"><a href="">부모마음<br>제안</a></li>
						<li class="menu_pay"><a href="#">결제<br>정보</a></li>
						<li class="menu_deliver"><a href="#">전용교재<br>배송정보</a></li>
					</ul>
				</div>
				<div class="menuStyle_02">
					<h3>T알쓸신잡</h3>
					<ul>
						<li class="ico_edu"><a href="#" target="_self">교육정보</a></li>
						<!--<li class="ico_aud"><a href="" target="_self">오디오북</a></li>-->
						<li class="ico_info"><a href="#" target="_self">밀크T 정보</a><span class="translation">다국어 지원</span></li>
						<!-- <li class="ico_che"><a href="" target="_self">메디컬 콘서트</a></li> -->
						<li class="ico_univ"><a href="#" target="_self">대입정보</a></li>
						<li class="ico_bnh"><a href="#" target="_self">뷰티앤헬스</a></li>
						<li class="ico_shop"><a href="#" target="_self">T쇼핑</a></li>
						<li class="ico_food"><a href="#" target="_self">학교급식</a></li>
						<li class="ico_note"><a href="#" target="_self">학교알림장</a></li>
						<li class="ico_map"><a href="#" target="_self">학원추천</a></li>
					</ul>
				</div>
				<div class="menuStyle_02 nochild"><!--nochild 자녀 미등록시 해당 클래스 추가-->
					<h3>T리포트</h3>
					<ul>
						<li class="ico_day"><a>출석현황</a></li>
						<li class="ico_sc"><a>학습계획표</a></li>
						<li class="ico_progress"><a>학습현황</a></li>
						<li class="ico_jindo"><a>진도조정요청</a></li>
					</ul>
				</div>

				<!-- 배너 영역// -->
				<div class="menu_bnr">
					<a href="#"><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/menu_bnr_200514.jpg" alt="코로나19 이후 경제전망"></a>
					<a href="#"><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/menu_bnr_210615.jpg" alt="AI챗봇 엘리와 말해봐"></a>
				</div>
				<!-- //배너 영역 -->

				<div class="menuStyle_03">
					<h3>T플레이</h3>
					<ul>
						<li class="ico_tv"><a href="#" target="_self"><span>밀크TV</span></a></li>
						<li class="ico_game"><a href="#" target="_self"><span>밀크게임</span></a></li>
						<li class="ico_ai"><a href="#" target="_self"><span>AI 평가</span></a></li>
						<li class="ico_story"><a href="#" target="_self"><span>말하는 동화책</span></a></li>
						<li class="ico_dictation"><a href="#" target="_self"><span>AI 받아쓰기</span></a></li>
						<li class="ico_trial"><a href="#" target="_self"><span>밀크T 맛보기</span></a></li>
						<li class="ico_library"><a href="#" target="_self"><span>영어 도서관<br/>Story 듣기</span></a></li>
						<li class="ico_king"><a href="#" target="_self"><span>AI 왕.상.</span></a></li>
					</ul>
				</div>
			</div>
			<!--//전체메뉴 컨텐츠-->
			<!--전체메뉴 푸터//-->
			<!-- <div class="navFooter">
				<h3>T플레이</h3>
				<ul>
					<li><span>밀크T 초등</span><strong>1577-1533</strong></li>
					<li><span>밀크T 중학</span><strong>1522-5533</strong></li>
					<li>평일 10:00~22:00</li>
					<li>토요일 10:00~20:00</li>
					<li>점심시간 12:00~13:00</li>
					<li>일요일/공휴일 휴무</li>
				</ul>
			</div> -->
			<!--//전체메뉴 푸터-->
		</div>
		<script type="text/javascript">
		function logout() {
		    window.location.href = "/milkT/kmocMain.do?command=logout";
		}

		</script>
