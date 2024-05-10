<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/member/search_pw.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
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
            <h1>비밀번호 찾기</h1>
            <jsp:include page="/HTML/sample/html/common/menu.jsp"></jsp:include>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <form action="" method="post" name="frm" id="frm" class="frm">
	        <div id="content">
	            <!--비밀번호 찾기 전체//-->
	            <div  class="pwSearchWrap">
	                <h2>T SPOON 가입 시 등록한<br>아이디, 이름과 휴대폰 번호를 입력하세요.</br>T SPOON가입 아이디만 비밀번호 재설정이 가능합니다.</h2>
	                <div class="formBox mt_50">
	                    <input type="text" class="itxt" id="idn" name="idn" placeholder="아이디" />
	                    <label class="title" for="idn">아이디</label>
	                </div>
	                <div class="formBox ">
	                    <input type="text" class="itxt" id="iname" name="iname" placeholder="이름" />
	                    <label class="title" for="iname">이름</label>
	                </div>
	               <div class="formBox">
	                    <input type="tel" class="itxt" id="password" name="phone" placeholder="휴대폰 번호" />
	                    <label class="title" for="password">휴대폰 번호</label>
	                </div>
	                <button class="button blue big" id="pwdSearch">비밀번호 찾기</button>
	            </div>
	            <!--//비밀번호 찾기 전체-->
	        </div>
        </form>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
    <script type="text/javascript">
		document.querySelector("#pwdSearch").addEventListener("click",function(){
		    	
		    	const frm = document.querySelector("#frm");
		    	frm.action = "/milkT/kmocMain.do?command=pwdSearch";
		    	frm.submit();
		    	
			
			});
    </script>
</body>
</html>