<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/oneboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
<meta name="format-detection" content="telephone=no, address=no" />
<title>T 클래스</title>
<script src="/milkT/HTML/sample/include/js/jquery-3.4.1.min.js"></script>
<script src="/milkT/HTML/sample/include/js/ui.js"></script>
<script src="/milkT/HTML/sample/include/js/chart.js"></script>
<script src="/milkT/HTML/sample/include/js/swiper.js"></script>
<script src="/milkT/HTML/sample/include/js/aos.js"></script>
<link rel="stylesheet" type="text/css"
	href="/milkT/HTML/sample/include/css/common.css" />
<link href="/milkT/HTML/sample/include/css/aos.css" rel="stylesheet">

</head>
<body>
	<!--웹영역 전체//-->
	<div id="wrap" class="wrap">
		<!--해더영역//-->
		<div id="header">
			<!-- 23-02-01 수정 -->
			<h1>1:1 친절 상담</h1>
			<jsp:include page="/HTML/sample/html/common/menu_login.jsp"></jsp:include>
			<!--//해더영역-->
			<!--컨텐츠 본문//-->
			<div id="content" class="pb_0">
				<!--1:1게시판 전체//-->
				<div class="oneBoardWrap ">
					<!--탭//-->
					<ul class="boardTab">
						<li class="on"><a
							href="/milkT/kmocMain.do?command=registBoardForm" target="_self">1:1
								문의글 작성</a></li>
						<li><a href="/milkT/kmocMain.do?command=board"
							" target="_self">내가 작성한 글</a></li>
					</ul>
					<!--//탭-->
					<!--문의 작성//-->
					<form method="post" name="frm" id="frm">
						<div class="boardBox">
							<em class="notice">필수 입력항목</em>
							<ul class="boardWrite">
								<li class="selList"><select id="ss1">
										<option value="" disabled="disabled" selected="selected">선택</option>
										<option value="10000">밀크T초등</option>
										<option value="20000">밀크T중학</option>
										<option value="30000">T CLASS</option>
								</select> <select id="ss2" style="display: none;">
										<option value="" disabled="disabled" selected="selected">선택</option>
										<option value="10100">학습/평가</option>
										<option value="10200">결제</option>
										<option value="10300">회원정보</option>
										<option value="10400">탭장애</option>
										<option value="10500">기타</option>
								</select> <select id="ss3" style="display: none;">
										<option value="" disabled="disabled" selected="selected">선택</option>
										<option value="20100">학습/평가</option>
										<option value="20200">결제</option>
										<option value="20300">회원정보</option>
										<option value="20400">탭장애</option>
										<option value="20500">기타</option>
								</select> <select id="ss4" style="display: none;">
										<option value="" disabled="disabled" selected="selected">선택</option>
										<option value="30100">이용문의</option>
										<option value="30200">건의/개선</option>
										<option value="30300">기타</option>
								</select></li>
								<li><input type="text" id="iname" name="iname"
									placeholder="제목" /></li>
								<script>
							//itxtArea 영역 반응형 리사이징
							$(document).ready(function(){
								$(window).resize(resizeContents);
								resizeContents();
							});
							function resizeContents() {
								$(".itxtArea").height($(window).height()-460);//
							}
							</script>
								<li class="itxtArea"><textarea id="textzone"
										class="itxtArea" name="textzone" placeholder="내용 작성"></textarea>
								</li>

							</ul>


							<button class="button blue big mt_20" id="boardBtn">등록</button>
						</div>
					</form>
					<!--//문의 작성-->
					<!--안내//-->
					<div class="boardFooter">
						<p>
							1:1 친절상담은 문의 접수일로부터 평일 기준 24시간 이내 답변을 받으실 수 있습니다. <strong>결제,
								환불/취소, 배송문의</strong>는 담당 관리선생님 또는 아래의 고객센터로 문의 주시기 바랍니다.
						</p>
						<ul>
							<li><strong>유아</strong><span>1522-6002</span></li>
							<li><strong>초등</strong><span>1577-1533</span></li>
							<li><strong>중고등</strong><span>1522-5533</span></li>
						</ul>
					</div>
					<!--//안내-->
				</div>
				<!--//1:1게시판 전체-->
			</div>
			<!--//컨텐츠 본문-->
		</div>
		<!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/oneboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
</html>
<!-- <script>
	$(document).ready(function(){
		//이미지 첨부
		$('#uploading').change(function(e){

			var fileValue = $('#uploading').val().split("\\");
			var fileName = fileValue[2]

			$('.fileName').text(fileName)
			$('li.uploadFile').addClass('ok');
		});
		//삭제하기
		$('.del').on('click',function(){
			$('#uploading').val("");
			$('.fileName').text("첨부파일이 없습니다.");
			$('li.uploadFile').removeClass('ok');
		});
	});
</script> -->
<script type="text/javascript">

document.getElementById('ss1').addEventListener('change', function() {
    var selectedValue = this.value;
    var ss2 = document.getElementById('ss2');
    var ss3 = document.getElementById('ss3');
    var ss4 = document.getElementById('ss4');
    console.log(selectedValue);
    if (selectedValue === '10000') {
        ss2.style.display = 'block'; 
        ss3.style.display = 'none'; 
        ss4.style.display = 'none'; 
    } else if (selectedValue === '20000') {
        ss3.style.display = 'block'; 
        ss2.style.display = 'none'; 
        ss4.style.display = 'none'; 
    } else if (selectedValue === '30000') {
        ss4.style.display = 'block';
        ss2.style.display = 'none'; 
        ss3.style.display = 'none'; 
    } 
    
    
});
	
	document.querySelector('#boardBtn').addEventListener('click', function() {
		
			
			const iname = document.querySelector('#iname');
			const textzone = document.querySelector('#textzone');
			if(iname.value == "" || textzone.value ==""){
				alert(" 제목 및 내용을 작성해주세요.");
			}
			
			
		else {
			const frm = document.querySelector('#frm');
			   var selectedValue = document.getElementById('ss1');
			   var ss2 = document.getElementById('ss2');
			    var ss3 = document.getElementById('ss3');
			    var ss4 = document.getElementById('ss4');
			    
				 frm.action = "/milkT/kmocMain.do?command=registBoard&selectedValue="
						 + selectedValue.value + "&ss2=" + ss2.value + "&ss3=" + ss3.value + "&ss4=" + ss4.value ;
			    frm.submit(); 
		}
	});
	
	
</script>

</html>