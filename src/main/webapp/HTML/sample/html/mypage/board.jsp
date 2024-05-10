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
    <style type="text/css">
    		.pageInfo_wrap {
    margin-top: 20px;
    text-align: center;
}

.pageInfo_area {
    display: inline-block;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
}

.pageInfo_btn {
    display: inline-block;
    margin: 0 5px;
}

.pageInfo_btn a {
    padding: 5px 10px;
    color: #333;
    text-decoration: none;
}

.pageInfo_btn.active a {
    background-color: #337ab7;
    color: #fff;
    border-radius: 5px;
}

.pageInfo_btn.previous a,
.pageInfo_btn.next a {
    font-weight: bold;
}

.pageInfo_btn.previous a span,
.pageInfo_btn.next a span {
    margin-right: 5px;
}

	 
	  .active{
      background-color: #cdd5ec;
  }
    </style>
</head>
<body>

	<!--웹영역 전체//-->
	<div id="wrap" class="wrap">
		<!--해더영역//-->
		<div id="header">
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
				<div class="boardBox">
					<ul class="boardList">
						<!-- 첨부파일 있는 경우 <span class="title_02 file"> 추가 -->

						<c:forEach var="list" items="${boardList}" varStatus="status">
							<li>
								<a href="/milkT/kmocMain.do?command=boardDetail&board_idx=${list.board_idx}" target="_self">
									<p class="title_01">${category[status.index]}</p>
									<span class="title_02 file">${list.board_title}</span>
									<span class="date">${list.board_reg_date}</span>
								</a>
								<c:choose>
									<c:when test="${list.board_comment eq 'n'}">
										<p class="status ready">답변<br>대기</p>
									</c:when>
									<c:otherwise>
										<p class="status">답변<br>완료</p>
									</c:otherwise>
								</c:choose>
								
							</li>
						</c:forEach>
					</ul>

					
				</div>
				<!--//문의 작성-->
					<div class="pageInfo_wrap" >
			        <div class="pageInfo_area">
			        		<!-- 이전페이지 버튼 -->
			                <c:if test="${pageMaker.prev}">
			                    <li class="pageInfo_btn previous"><a href="/milkT/kmocMain.do?command=board&pageNum=${pageMaker.startPage-1}">Previous</a></li>
			                </c:if>
			 				
			                 <!-- 각 번호 페이지 버튼 -->
			                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			                    <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="/milkT/kmocMain.do?command=board&pageNum=${num}" >${num}</a></li>
							</c:forEach>
			                
			                      <!-- 다음페이지 버튼 -->
			                <c:if test="${pageMaker.next}">
			                    <li class="pageInfo_btn next"><a href="/milkT/kmocMain.do?command=board&pageNum=${pageMaker.endPage + 1 }">Next</a></li>
			                </c:if>  
			        </div>
				</div>
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
	
</body>

</html>