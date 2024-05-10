<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="format-detection" content="telephone=no, address=no" />
    <title>T 클래스</title>
    <script src="../../include/js/jquery-3.4.1.min.js"></script>
    <script src="../../include/js/ui.js"></script>
    <script src="../../include/js/chart.js"></script>
    <script src="../../include/js/swiper.js"></script>
    <script src="../../include/js/aos.js"></script>
    <link rel="stylesheet" type="text/css" href="../../include/css/common.css" />
    <link href="../../include/css/aos.css" rel="stylesheet">
</head>
<body>
    <!--웹영역 전체//-->
    <div id="wrap" class="wrap">
        <!--해더영역//-->
        <div id="header">
            <h1>로그인</h1>
           <jsp:include page="/HTML/sample/html/common/menu.jsp"></jsp:include>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--로그인 전체//-->
            <div  class="loginWrap">
                <h2>T SPOON, 밀크T 학부모 아이디로<br/>로그인 하실 수 있습니다.</h2>
                
                <form method="post" name="frm" id="frm"> 
	                <div class="formBox">
	                    <input type="text" class="itxt" id="idn" name="idn" placeholder="아이디" />
	                    <label class="title" for="idn">아이디x</label>
	                </div>
	               <div class="formBox">
	                    <input type="password" class="itxt" id="password" name="pwd" placeholder="비밀번호" />
	                    <label class="title" for="password">비밀번호</label>
	                </div>
               
                <div class="saveLog">
                    <input type="checkbox"  id="saveid" name=""  />
                 
                </div>
                <button id="loginBtn"class="button blue big">로그인</button>
               </form>
               
               <ul class="bottomMenu">
                    <li><a href="/milkT/kmocMain.do?command=idSearchForm" target="_self">아이디 찾기</a></li>
                    <li><a href="/milkT/kmocMain.do?command=pwdSearchForm" target="_self">비밀번호 찾기</a></li>
                    <li><a href="/milkT/kmocMain.do?command=joinForm" target="_self">가입하기</a></li>
               </ul>

               <p class="btn_privacyPolicy"><a href="#">개인정보 처리방침 &gt;</a></p>



            </div>
            <!--//로그인 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
    
    <script type="text/javascript">
    document.querySelector("#loginBtn").addEventListener("click",function(){
    	
    	const frm = document.querySelector("#frm");
    	frm.action = "/milkT/kmocMain.do?command=login";
    	frm.submit();
    	
	
	});
    </script>
</body>

</html>