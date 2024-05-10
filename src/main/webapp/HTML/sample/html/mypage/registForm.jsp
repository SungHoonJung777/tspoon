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
            <h1>쪽지</h1>
            <jsp:include page="/HTML/sample/html/common/menu_login.jsp"></jsp:include>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--쪽지 전체//-->
            <div class="msgWrap ele"> <!-- 학생별 클래스명 추가 초:ele / 중:mid / 고:high -->
                <!--학생 선택//-->
                <div class="childStatus">
                  <div class="profileWrap">
                    <p class="photo">
                      <img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" />
                      <span></span>
                    </p>
                  </div>
                    <select>
                        <option value=""  selected="selected">${memberName }</option>
                        <option value="01">김밀코</option>
                        <option value="02">김말이</option>
                    </select>
                    <span class="btnWrite"><a href="/milkT/kmocMain.do?command=registMailForm">쪽지쓰기</a></span>
                </div>
                <!--//학생 선택-->
                <!--쪽지 컨텐츠 박스//-->
                <div class="msgBox">
	                <form method="post" name="frm" id="frm" class="frm" enctype="multipart/form-data">
	                    <!--쪽지 쓰기//-->
	                    <ul class="msgWrite">
	                        <li class="selList">
	                            <label for="touser">받는사람</label>
	                           <!--  <select id="touser">
	                                <option value="" disabled="disabled" selected="selected">관리선생님</option>
	                                <option value="01">관리선생님1</option>
	                                <option value="02">관리선생님2</option>
	                            </select> -->
	                           <input type="text" name="getName" id="getName" value="">
	                        </li>
	                        <li class="titleWrite">
	                            <input type="text" class="itxt" id="iname" name="iname" placeholder="제목" />
	                            <div class="btnFile">
	                                <label for="fileupload">업로드</label>
	                                <input type="file" name="pic" id="fileupload"  >
	                            </div>
	                        </li>
	                        <li class="fileList">
	                             <span class="file"><input type="file" name="file" multiple/><a href="#">삭제</a></span>
	                        </li>
	                        <script >
	                        //itxtArea 영역 반응형 리사이징
	                        $(document).ready(function(){
	                            $(window).resize(resizeContents);
	                            resizeContents();
	                        });
	                        function resizeContents() {
	                            $(".itxtArea").height($(window).height()-473);
	                        }
	                        </script>
	                        <li class="itxtArea">
							    <textarea id="textzone" class="itxtArea" name="textzone" placeholder="내용 작성" oninput="countCharacters(this)"></textarea>
							    <span id="charCount" class="count">(<strong>0</strong>/1000)</span>
							</li>

	                    </ul>
	                    <button class="button blue big mt_40" id="registMail">보내기</button>
	                    <!--//쪽지 쓰기-->

					</form>
                </div>
                <!--//쪽지 컨텐츠 박스-->
            </div>
            <!--//쪽지 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
    <script type="text/javascript">
    	document.querySelector("#registMail").addEventListener("click",function(){
    		const getName = document.querySelector("#getName");
    		const title = document.querySelector("#iname");
    		const content = document.querySelector("#textzone");
    		
    		if(title.value == "" || content.value =="" || getName.value ==""){
    			alert("받는 사람과 제목 및 내용을 작성해주세요.");
    		} else {
    			const frm = document.querySelector("#frm");
        		frm.action = "/milkT/kmocMain.do?command=registMail";
        		frm.submit();
    		}
    		
    		
    	});
    	
    	function countCharacters(textarea) {
    	    var maxLength = 1000; 
    	    var currentLength = textarea.value.length; // 현재 입력된 글자 수
    	    var remaining = maxLength - currentLength; // 남은 글자 수

    	    // 남은 글자 수 업데이트
    	    var countElement = document.getElementById('charCount');
    	    countElement.innerHTML = '(' + '<strong>' + currentLength + '</strong>' + '/' + maxLength + ')';

    	    // 글자 수 제한
    	    if (currentLength > maxLength) {
    	        // 현재 글자 수가 최대 글자 수를 초과한 경우
    	        textarea.value = textarea.value.substring(0, maxLength);
    	        countElement.innerHTML = '(' + '<strong>' + maxLength + '</strong>' + '/' + maxLength + ')';
    	    }
    	}
	
    </script>
</body>
</html>