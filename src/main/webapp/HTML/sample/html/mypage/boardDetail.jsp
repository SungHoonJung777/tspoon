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
			<!-- 23-02-01 수정 --><h1>1:1 친절 상담</h1>
			<jsp:include page="/HTML/sample/html/common/menu_login.jsp"></jsp:include>
		<!--//해더영역-->
		<!--컨텐츠 본문//-->
		<div id="content" class="pb_0">
			<!--1:1게시판 전체//-->
			<div class="oneBoardWrap">
				<!--탭//-->
				<ul class="boardTab">
					<li><a href="/milkT/kmocMain.do?command=registBoardForm" target="_self">1:1 문의글 작성</a></li>
					<li class="on"><a href="/milkT/kmocMain.do?command=board" target="_self">내가 작성한 글</a></li>
				</ul>
				<!--//탭-->
				<!--문의 작성//-->
				<form id="frm" class="frm" method="post">
				<div class="boardBox">
					 <!--상세//-->
					<ul class="boardView">
					
						<li>
							<input type="hidden" id="boardIdx" class="boardIdx" value="${boardList[0].board_idx}"/>
							<input type="hidden" id="boardTitle" class="boardTitle" name ="boardTitle" value="${boardList[0].board_title}"/>
							<input type="hidden" id="boardContent" class="boardContent" name ="boardContent"  value="${boardList[0].board_content}"/>
							<input type="hidden" id="boardComment" class="boardComment" name ="boardComment"  value="${boardList[0].board_comment}"/>
									
							<p class="title_01">${category}<span>${categoryDetail}</span></p>
							<span class="title_02">${boardList[0].board_title }</span>
							
							<c:choose>
								<c:when test="${boardList[0].board_comment eq 'n'}">
									<span class="date">${boardList[0].board_reg_date}<u>답변대기</u></span>
								</c:when>
								<c:otherwise>
									<span class="date">2019-12-01 오후 6:01:17<u class="com">답변완료</u></span>
								</c:otherwise>
							</c:choose>
							
							<!-- <span class="date">2019-12-01 오후 6:01:17<u class="com">답변완료</u></span> -->
							<!-- <button class="btnTool" >툴열기</button>
							<div class="editLay">
								<button class="edit" onclick="location.href='oneboard.html' ">수정</button>
								<button class="del" >삭제</button>
							</div> -->
						</li>
						<script >
						//itxtArea 영역 반응형 리사이징
						$(document).ready(function(){
							$(window).resize(resizeContents);
							resizeContents();
						});
						function resizeContents() {
							$(".itxtArea").height($(window).height()-405);
						}
						</script>
					   <li class="itxtArea">
							${boardList[0].board_content}
						</li>
						<li class="fileView"><span>이미지 첨부</span><a href="#">이미지이름.png</a> </li>
						
							<c:choose>
								<c:when test="${boardList[0].board_comment eq 'n'}">
									<li><button class="button green big" id="commentBtn" >답변달기</button></li>
									<!-- <li class="ansArea">
										<span class="date">답변일자  2019-12-01</span>
										안녕하세요. T Class 입니다<br>
										답변드립니다. 답변드립니다. 답변드립니다.<br>
										답변드립니다. 답변드립니다. 답변드립니다. <br>
										답변드립니다. 답변드립니다. 답변드립니다.<br>
										답변드립니다. <br>
									</li> -->
								</c:when>
								<c:otherwise>
									<li class="ansArea">
										<span class="date">답변일자 ${boardList[0].board_comment_date}</span>
										${boardList[0].board_comment_content}
									</li>
									<li><button class="button green big" id="commentBtn" style="display: none;">답변달기</button></li>
								</c:otherwise>
							</c:choose>
						
					</ul>
					<p class="info">답변이 달린 경우 글을 수정하거나 삭제할 수 없습니다.</p>
					<ul class="btnList mt_20">
						<li><button class="button dark big" id="deleteBtn">삭제</button></li>
						<li><button class="button blue big" id="updateBtn">수정</button></li>
						
					</ul>
					<!--//상세-->
				</div>
				</form>
				<!--//문의 작성-->
				<!--안내//-->
				 <div class="boardFooter">
					<p>
					1:1 친절상담은 문의 접수일로부터 평일 기준 24시간 이내
					답변을 받으실 수 있습니다. <strong>결제, 환불/취소, 배송문의</strong>는 담당
					관리선생님 또는 아래의 고객센터로 문의 주시기 바랍니다.
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
	<script type="text/javascript">

		const comment = document.querySelector("#boardComment");
		if(comment.value == 'y'){

			const btn2  = document.querySelector("#updateBtn"); 
			btn2.style.color = "black";   
			btn2.style.background = "gray"; 
			btn2.setAttribute("disabled","disabled");

		}
		document.querySelector("#deleteBtn").addEventListener("click", function(){
			const idx = document.querySelector("#boardIdx") ;
			const frm  = document.querySelector("#frm") ;
			
			frm.action = "/milkT/kmocMain.do?command=deleteBoard&board_idx=" + idx.value;
			frm.submit();
			
		});
		
		document.querySelector("#updateBtn").addEventListener("click", function(){
			const idx = document.querySelector("#boardIdx") ;
			const frm  = document.querySelector("#frm") ;
			
			frm.action = "/milkT/kmocMain.do?command=updateBoard&board_idx=" + idx.value;
			frm.submit();
			
		});  
		
		document.querySelector("#commentBtn").addEventListener("click", function(){
			const idx = document.querySelector("#boardIdx") ;
			const frm  = document.querySelector("#frm") ;

			
			frm.action = "/milkT/kmocMain.do?command=commentBoard&board_idx=" + idx.value;
			frm.submit(); 
			
		}); 
		
		
		
		
	</script>
</body>

</html>