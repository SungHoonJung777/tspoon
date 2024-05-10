<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <h1>아이디 찾기</h1>
            <jsp:include page="/HTML/sample/html/common/menu.jsp"></jsp:include>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <form action="" method="post" name="frm" id="frm" class="frm">
	        <div id="content">
	            <!--아이디찾기 전체//-->
	            <div  class="idSerachWrap">
	                <h2>T SPOON , 밀크T 아이디 찾기가 가능합니다.<br>등록한 이름과 휴대폰 번호를 입력하세요.</h2>
	                <div class="formBox mt_40">
	                    <input type="text" class="itxt" id="iname" name="iname" placeholder="이름" />
	                    <label class="title" for="iname">이름</label>
	                </div>
	               <div class="formBox">
	                    <input type="tel" class="itxt" name="tel" id="password" placeholder="휴대폰 번호" />
	                    <label class="title" for="password">휴대폰 번호</label>
	                </div>
	                <button class="button blue big" id="searchBtn">아이디 찾기</button>
	            </div>
	            <!--//아이디찾기 전체-->
	        </div>
        </form>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
    <script type="text/javascript">
    	document.querySelector("#searchBtn").addEventListener("click", function(){
    		var frm = document.querySelector("#frm");
    		
    		frm.action = "/milkT/kmocMain.do?command=idSearch";
    		frm.submit();
    	});
    </script>
</body>
</html>