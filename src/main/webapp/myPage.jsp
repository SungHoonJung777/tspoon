<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 전체 페이지 스타일 */
body {
    font-family: 'Roboto', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
    color: #333;
    text-decoration: none;
}

/* 제목 섹션 스타일 */
.title {
    background-color: #2c3e50;
    color: #fff;
    padding: 20px;
    text-align: center;
}

.title h1 {
    margin: 0;
    font-size: 2em;
}

/* 컨테이너 스타일 */
.container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
    padding: 20px;
}

/* 그리드 박스 스타일 */
.grid_box {
    text-align: center;
    background-color: #fff;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease-in-out;
    width: 1100px;
    margin-left: 45px;
}

.grid_box:hover {
    transform: translateY(-5px);
}

/* 로그인 상자 스타일 */
.login_box {
    background-color: #3498db;
    padding: 20px;
    border-radius: 10px;
}

.login_box a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    display: block;
    margin-bottom: 10px;
}

.login_box a:hover {
    opacity: 0.8;
}

/* 이미지 상자 스타일 */
.img_box {
    display: block;
    width: 80px;
    height: 80px;
    background-color: #f39c12;
    margin: 0 auto 10px;
    border-radius: 50%;
    line-height: 80px;
    text-align: center;
}

.img_box:hover {
    background-color: #e67e22;
}

/* 로그아웃 버튼 스타일 */
.logout {
    background-color: #e74c3c;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.logout:hover {
    background-color: #c0392b;
}

/* 업데이트 중 링크 스타일 */
.updating {
    pointer-events: none;
    color: #ccc;
    text-decoration: none;
}

.updating:hover {
    color: #999;
}
/* 이미지 컨테이너 스타일 */
.image_container {
    background: url('./img/poptp.png') 14% no-repeat;
    background-size: contain; /* 이미지가 div에 맞게 조절되도록 */
    padding: 20px; /* 내부 여백 추가 */
    text-align: center; /* 내부 요소를 가운데 정렬 */
}

/* 이미지 상자 스타일 */
.img_box1 {
    display: inline-block;
    width: 80px;
    height: 80px;
    background-color: rgba(0, 0, 0, 0.5); /* 배경 이미지를 보완하기 위해 투명한 배경 추가 */
    margin: 0 auto 10px;
    border-radius: 50%;
    line-height: 80px;
    text-align: center;
}

.img_box1:hover {
    background-color: rgba(0, 0, 0, 0.7); /* 호버 시 더 어둡게 변경 */
}
a {
	text-decoration: none;
	font-weight: 400;
	color: black;
}
</style>
</head>
<body>


<div class="wrap">
	<section class="title">
		<h1>T Class</h1>
	</section>
</div>
	<!-- 콘텐츠 -->
	<main>
		<div class="container">
			<div class="grid_box">
					<div >
		    			<a class="updating" href="/myPage/coupon" onclick="return false;">
	               		  	<span class="img_box1">
	               			</span>
	               		
	              		</a>
		    		</div>
				<div class="login_box">
					<c:if test="true">
						<a href="/login"><span>로그인 해주세요</span></a>
					</c:if>
					
					<c:if test="#">
						<c:set var="ninkname" value="#" />
						<a href="/user/myInfo"><span class="ninkname" ></span></a>
						<button type="button" class="logout">로그아웃</button>
					</c:if>
				</div>
				
					<div style="margin-top:40px;">
		    			<a href="/user/point" onclick="return loginCheck();">
	                       	<span class="img_box">
	                       	</span>
	                       	<span>쪽지</span>
	                  	</a>
		    		</div>
		    		
		    		
		    		<div >
		    			<a href="/user/point" onclick="return loginCheck();">
	                       	<span class="img_box">
	                       	</span>
	                       	<span>1:1 게시판</span>
	                  	</a>
		    		</div>

			</div>
		
		</div>
	</main>
</body>
</html>