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
  .pageInfo_wrap{
  	margin-left: 560px;
  }
    </style>
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
            <div class="msgWrap bookclub"> <!-- 2022-03-07 변경: 학생별 클래스명 추가 초:ele / 중:mid / 고:high / 북클럽:bookclub-->
                <!--학생 선택//-->
                <div class="childStatus">
                    <!-- <p class="photo"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" /></p> -->
                    <div class="profileWrap">
                      <p class="photo">
                        <img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png" alt="내 프로필 이미지" />
                        <span></span>
                      </p>
                    </div>
                    <select>
                        <option value=""  selected="selected">${memberName}</option>
<!--                         <option value="01">김밀코</option>
                        <option value="02">김말이</option> -->
                    </select>
                    <span class="btnWrite02"><a href="/milkT/kmocMain.do?command=registMailForm">쪽지쓰기</a></span>
                    <span class="btnPra"><a href="../report/message_praise.html">칭찬하기</a></span>
                </div>
                <!--//학생 선택-->
                <!--쪽지 컨텐츠 박스//-->
                <div class="msgBox">
                    <!--쪽지탭//-->
                    <ul class="msgTab">
                        <li class="on"><a href="" target="_self">받은 쪽지함</a></li>
                        <li><a href="/milkT/kmocMain.do?command=requestMail" target="_self">보낸 쪽지함</a></li>
                    </ul>
                    <!--//쪽지탭-->
                    <!--쪽지 리스트//-->
                   <!-- 쪽지 리스트 -->
					<ul class="msgList">
					    <li class="status">
					        <input type="checkbox" id="c0" name="" />
					        <label for="c0"><span></span>선택</label>
					       <button class="btn" id="deleteBtn">삭제</button>
					        <p><strong>${mailCheck}개</strong><span>${total_count}개</span></p>
					    </li>
						
					    <c:forEach var="list" items="${mailList}" varStatus="status">
					        <li class="noRead">
					            <input type="checkbox" id="c${status.index + 1}" name="checkbox"  class="checkBox" />
					            <label for="c${status.index + 1}"><span></span>선택</label>
					            <a href="/milkT/kmocMain.do?command=mailDetail&mail_idx=${list.mail_idx}" target="_self">
					                <p class="name">${list.member_name}</p>
					                <c:choose>
					                	<c:when test="${list.mail_check eq 'n'}">
					                		<span class="title">${list.mail_title} <u class="file">첨부파일</u></span>
					                	</c:when>
					                	<c:otherwise>
					                		<span class="title" style="color: gray;">${list.mail_title} <u class="file">첨부파일</u></span>
					                	</c:otherwise>
					                </c:choose>
					                
					                <span class="date">${list.mail_reg_date}</span>
					            </a>
					             <input type="hidden" id="mailIdx" class="mailIdx" value="${list.mail_idx}"/>
					        </li>
					    </c:forEach>
					</ul>

                 
                    <!--//쪽지 리스트-->
					<div class="pageInfo_wrap" >
			        <div class="pageInfo_area">
			        		<!-- 이전페이지 버튼 -->
			                <c:if test="${pageMaker.prev}">
			                    <li class="pageInfo_btn previous"><a href="/milkT/kmocMain.do?command=mail&pageNum=${pageMaker.startPage-1}">Previous</a></li>
			                </c:if>
			 				
			                 <!-- 각 번호 페이지 버튼 -->
			                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			                    <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="/milkT/kmocMain.do?command=mail&pageNum=${num}" >${num}</a></li>
							</c:forEach>
			                
			                      <!-- 다음페이지 버튼 -->
			                <c:if test="${pageMaker.next}">
			                    <li class="pageInfo_btn next"><a href="/milkT/kmocMain.do?command=mail&pageNum=${pageMaker.endPage + 1 }">Next</a></li>
			                </c:if>  
			        </div>
				</div>

                </div>
                
                <!--//쪽지 컨텐츠 박스-->
            </div>
            <!--//쪽지 전체-->
            
        </div>
        
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
    <script type="text/javascript">
   		const vr = document.querySelector('#c0');
   		document.querySelectorAll('input[type="checkbox"]').forEach(function(checkbox) {
   		    checkbox.addEventListener("click", function(e) {
   		        if (checkbox.id === 'c0') { 
   		            if (checkbox.checked) {
   		                document.querySelectorAll('.checkBox').forEach(function(checkbox) {
   		                    checkbox.checked = true;
   		                });
   		            } else {
   		                document.querySelectorAll('.checkBox').forEach(function(checkbox) {
   		                    checkbox.checked = false;
   		                });
   		            }
   		        }
   		    });
   		});
    
	    document.querySelectorAll('.checkBox').forEach(function(checkbox) {
	    	checkbox.addEventListener("click", function(){
	    		 
	       })
	    });
	    document.querySelector('#deleteBtn').addEventListener("click", function(){
	    	document.querySelectorAll('input[type="checkbox"]').forEach(function(checkbox) {
	    		
   		           
   		        
	    	});
	    });
	   
	    document.querySelector('#deleteBtn').addEventListener("click", function(){
	        var selectedValues = []; 

	        document.querySelectorAll('.checkBox').forEach(function(checkbox) {
	            if (checkbox.checked) {
	                
	           	 const selected = checkbox.closest('.noRead').querySelector('.mailIdx');
	           
	               
	                selectedValues.push(selected.value);
	            }
	        });

	        console.log("선택된 값들:", selectedValues);
	        location.href="/milkT/kmocMain.do?command=deleteMail&selectedValues=" + selectedValues;
	    });


    </script>
</body>
</html>