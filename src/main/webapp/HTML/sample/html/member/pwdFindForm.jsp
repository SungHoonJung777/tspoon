<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
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
            <h1>아이디 확인</h1>
            <jsp:include page="/HTML/sample/html/common/menu.jsp"></jsp:include>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <form action="" id="frm" name="frm"></form>
        <div id="content">
            <!--아이디확인 전체//-->
            <div  class="idSerachWrap">
               
                <!-- <div class="idList">
                    <ul>
                        <li>[밀크T 초등] jenn**** (18.09.07)</li>
                        <li>[밀크T 초등] jjnn**** (18.09.05)</li>
                    </ul>
                </div> -->
                
                <c:choose>
                	<c:when test="${pwdChange eq 'nullPwd'}">
                		 <h2><strong>입력하신 정보와 일치하는 정보가 없습니다.</strong></h2>
                	</c:when>
                	<c:otherwise>
                		 <h2><strong>임시 비밀번호가 발급되었습니다. 마이페이지에서 수정해주세요.</strong></h2>
                		<div class="formBox idList atten mt_40">
		                    <label class="title" for="111">비밀번호 선택</label>
		                   <p>임시 비밀번호 : ${pwdChange}</p>
		                </div>
                	</c:otherwise>
                </c:choose>
                
                
<!--                 <p class="txt_01 mt_20">개인정보 보호를 위해<br>아이디는 앞의 4자리만 공개되며, 총 8자리로만 표시합니다.<br>실제 아이디와 글자 수는 다를 수 있습니다.</p>
 --><!--                 <button class="button white big mt_50" onclick="location.href='search_id_03.html' ">아이디 전체 확인</button>
 -->               
 				 <c:choose>
                	<c:when test="${pwdChange eq 'nullPwd'}">
                		  <button class="button blue big mt_10"  id="pwdBtn">다시 찾기</button>
                	</c:when>
                	<c:otherwise>
                		 <button class="button blue big mt_10"  id="loginBtn">로그인</button>
                	</c:otherwise>
                </c:choose>
            </div>
            <!--//아이디확인 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
    <script type="text/javascript">
 	document.querySelector("#loginBtn").addEventListener("click",function(){
    	
    	const frm = document.querySelector("#frm");
    	frm.action = "/milkT/HTML/sample/html/member/login.jsp";
    	frm.submit();
    	
	
	});
 	
 	document.querySelector("#pwdBtn").addEventListener("click",function(){
    	
    	const frm = document.querySelector("#frm");
    	frm.action = "/milkT/kmocMain.do?command=pwdSearchForm";
    	frm.submit();
    	
	
	});
    </script>
</body>
</html>