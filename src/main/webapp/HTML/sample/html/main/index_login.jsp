<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/main/index_login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:16:19 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="format-detection" content="telephone=no, address=no" />
    <title>T 클래스</title>
    <script src="/milkT/HTML/sample/include/js/jquery-3.4.1.min.js"></script>
    <script src="/milkT/HTML/sample/include/js/ui.js"></script>
    <script src="/milkT/HTML/sample/include/js/chart.js"></script>
    <script src="/milkT/HTML/sample/include/js/swiper.js"></script>
    <script src="/milkT/HTML/sample/include/js/aos.js"></script>
    <link rel="stylesheet" type="text/css" href="/milkT/HTML/sample/include/css/common.css" />
    <link href="/milkT/HTML/sample/include/css/aos.css" rel="stylesheet">
    
</head>
<body>
    <!--웹영역 전체//-->
    <div id="wrap" class="wrap">
        <!--해더영역//-->
        <div id="header">
            <h1>T SPOON</h1>
            <c:choose>
            	<c:when test="${memberName eq '' || memberName eq null || memberName eq 'null'}">
            
            		        	<jsp:include page="/HTML/sample/html/common/menu.jsp"></jsp:include>
            		<%-- <jsp:include page="/HTML/sample/html/common/menu_login.jsp"></jsp:include> --%>
            	</c:when>
            	<c:otherwise>
          
            		 <jsp:include page="/HTML/sample/html/common/menu_login.jsp"></jsp:include>
            	</c:otherwise>
            </c:choose>

        <!--//해더영역-->
        <!--전체메뉴//-->
        <div id="mySidenav" class="sidenav" >
            <!--전체메뉴 해더//-->
            <div class="navHeader">
                <span class="closebtn"><a href="javascript:void(0)" onclick="closeNav()">전체메뉴 닫기</a></span>
                <h2>T SPOON</h2>
                <span class="setBtn"><a href="#none" onclick="alert('환경설정 APP');return false;">환경설정</a></span>
            </div>
            <!--//전체메뉴 해더-->
            <!--전체메뉴 컨텐츠//-->
            <div class="navContent">
                <!--미 로그인 시//-->
                <c:choose>
                	<c:when test="${userId ne null}">
                	 <div class="userStatus">
		                    <p class="photo"><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" /></p>
		                    <p class="name">${userName}</p>
		                    <button class="btnLogOut">로그아웃</button>
		                      <button class="btnLogin" style="display: none;">로그인</button>
		                </div>
                		 <div class="menuStyle_01 nochild">
		                    <ul>
		                        <li><a href="/milkT/kmocMain.do?command=mail">쪽지<span></span></a></li>
		                        <li><a href="/milkT/kmocMain.do?command=board">1:1<br>게시판</a></li>
		                        <li><a href="/milkT/kmocMain.do?command=editForm">개인정보수정<br></a></li>
		                    </ul>
		                </div>
                	</c:when>
                	<c:otherwise>
                		<div class="userStatus_02">
		                    <p class="photo"><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_noimg.png" alt="" /></p>
		                    <button class="btnLogin">로그인</button>
		                      <button class="btnLogOut" style="display: none;">로그아웃</button>
		                </div>
                	</c:otherwise>
                </c:choose>
                
                <!--//미 로그인 시-->
                <!-- 로그인 상태
                <div class="userStatus">
                    <p class="photo"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" /></p>
                    <p class="name">홍길동</p>
                    <button class="btnLogOut">로그아웃</button>
                </div>
                 -->
                <!-- <div class="menuStyle_01 nochild">
                    <ul>
                        <li><a>쪽지<span>+99</span></a></li>
                        <li><a>1:1<br>게시판</a></li>
                        <li><a href="" target="_self">자녀<br>등록</a></li>
                        <li><a>결제<br>정보</a></li>
                        <li><a>전용교재<br>배송정보</a></li>
                    </ul>
                </div> -->
                <div class="menuStyle_02">
                    <h3>T알쓸신잡</h3>
                    <ul>
                        <li class="ico_edu"><a href="#" target="_self">교육정보</a></li>
                        <!--<li class="ico_aud"><a href="" target="_self">오디오북</a></li>-->
                        <li class="ico_info"><a href="#" target="_self">밀크T정보</a></li>
                        <li class="ico_che"><a href="#" target="_self">메디컬 콘서트</a></li>
                        <li class="ico_food"><a href="#" target="_self">학교급식</a></li>
                        <li class="ico_shop"><a href="#" target="_self">쇼핑몰</a></li>
                        <li class="ico_note"><a href="#" target="_self">학교알림장</a></li>
                        <li class="ico_map"><a href="#" target="_self">학원추천</a></li>
                    </ul>
                </div>
                <!--<div class="menuStyle_02 nochild">
                    <h3>학습리포트</h3>
                    <ul>
                        <li class="ico_day"><a>출석현황</a></li>
                        <li class="ico_sc"><a>학습계획표</a></li>
                        <li class="ico_progress"><a>학습현황</a></li>
                        <li class="ico_jindo"><a>진도조정요청</a></li>
                    </ul>
                </div>-->
                <div class="menuStyle_03">
                    <h3>T플레이</h3>  
                    <ul>
                        <li class="ico_tv"><a href="#" target="_self"><span>밀크TV</span></a></li>
                        <li class="ico_game"><a href="#" target="_self"><span>밀크T게임</span></a></li>
                        <li class="ico_ai"><a href="#" target="_self"><span>AI 평가</span></a></li>
                    </ul>
                </div>
            </div>
            <!--//전체메뉴 컨텐츠-->

        </div>
        <!--//전체메뉴-->
        <!--컨텐츠 본문//-->
        <div id="contentMain">
            <!--메인 전체//-->
            <div class="mainWrap">
                <div class="swiper-container-main">
                    <div class="swiper-wrapper">
                        <!--왼쪽 학부모 컨텐츠메뉴//-->
                        <div class="swiper-slide leftWrap">
                            <h3><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/main_top_left.png" alt="엄마를 위한 알찬 정보만 모아둔 밀크T 특별 콘텐츠!"></h3>
                            <ul>
                                <li><a href="#">교육정보</a></li>
                                <li><a href="#">밀크T 정보</a></li>
                                <li><a href="#">학교급식</a></li>
                                <li><a href="#">학교알림장</a></li>
                                <li><a href="#">오디오북</a></li>
                                <li><a href="#">쇼핑몰</a></li>
                                <li><a href="#">메디컬 콘서트</a></li>
                                <li><a href="#">학원추천</a></li>
                                <li><a href="#">AI평가</a></li>
                            </ul>
                        </div>
                        <!--//왼쪽 학부모 컨텐츠메뉴-->





                        <!--메인 비쥬얼 영역//-->
                        <div class="swiper-slide">
                            <!-- <p style="width:86%;border:2px solid red;padding:200px 0;text-align:center;margin:0 auto;background:#fafafa">
                               로그인O > 자녀 없을때 > 홍보페이지
                            </p> -->
                            <div class="login_page">
								<p><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_01.jpg" alt="">
                                    <span class="swiper-button-prev"><a href="#">prev</a></span>
                                    <span class="swiper-button-next"><a href="#">next</a></span>
								</p>
								<p><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_02.jpg" alt=""></p>
								<p><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_03.jpg" alt=""></p>
								<p><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_04.jpg" alt=""></p>
								<p><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_05_v2.jpg" alt=""></p>
								<p>
									<img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/main/login_page/img_cnt_06_v2.jpg" alt="">
									<a href="#" alt="시작하기"></a>
								</p>
                            </div>
                        </div>
                        <!--//메인 비쥬얼 영역-->




                        <!--우측 학생 컨텐츠//-->
                        <div class="swiper-slide rightWrap">
                            <h3><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/main_top_right.png" alt="아이를 위한 즐겁고 재미있는 밀크T 특별 콘텐츠!"></h3>
                            <ul>
                                <li><a href="#">밀크TV<span>영상으로 더 즐거운 학습</span></a></li>
                                <li><a href="#">밀크게임<span>게임으로 더 쉽고 재미있게</span></a></li>
                            </ul>
                        </div>
                        <!--//우측 학생 컨텐츠-->
                    </div>
                </div>
                <script>
                //스와이프 영역
                var swiper = new Swiper('.swiper-container-main', {
                    //effect : 'fade',
                    autoHeight  : true,
                    spaceBetween:0,
                    centeredSlides: false,
                    initialSlide:1,
                    loop: false,
                    navigation: {
                        prevEl: '.swiper-button-prev',
                        nextEl: '.swiper-button-next',
                    },
                });
                </script>



            </div>
            <!--//메인 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
    
    <script type="text/javascript">
    	document.querySelector(".btnLogin").addEventListener("click",function(){
    		location.href = "/milkT/HTML/sample/html/member/login.jsp";
    	});
    	document.querySelector(".btnLogOut").addEventListener("click",function(){
    		location.href = "/milkT/kmocMain.do?command=logout";
    	});
    	
    </script>
</body>
</html>