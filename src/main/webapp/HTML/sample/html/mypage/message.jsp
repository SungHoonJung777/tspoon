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
                
                    </select>
                    <span class="btnWrite"><a href="/milkT/kmocMain.do?command=registMailForm">쪽지쓰기</a></span>
                </div>
                <!--//학생 선택--> 
                <!--쪽지 컨텐츠 박스//-->
                <div class="msgBox">
                    <!--쪽지 상세//-->
                    <ul class="msgView">
                        <li class="title">${mailDetail[0].mail_title}</li>
                        <li>
                            <p><span>보낸 사람</span>${mailDetail[0].member_Post_user_name}</p>
                            <p><span>받은 시간</span>${mailDetail[0].mail_reg_date}</p>
                        </li>
                        <li class="fileList">
                        	<c:choose>
									<c:when test="${not empty fileLists }">
										<c:forEach var="list" items="${fileLists}" varStatus="loop">
									
											<a href="/milkT/kmocMain.do?command=mailFileDown&orgFile=${list.getOrgFile()}&saveFile=${list.getSaveFile()}&mail_idx=${list.getMail_idx()}">
											<u class="file">${list.getSaveFile()}</u></a>
									
										</c:forEach>
									</c:when>
									<c:otherwise>
										<p>첨부파일 없음</p>
									</c:otherwise>
								</c:choose>
                        
                        </li>
                        <script >
                        //itxtArea 영역 반응형 리사이징
                        $(document).ready(function(){
                            $(window).resize(resizeContents);
                            resizeContents();
                        });
                        function resizeContents() {
                            $(".itxtArea").height($(window).height()-325);//
                        }
                        </script>
                        <li class="itxtArea">
                            ${mailDetail[0].mail_content}
                        </li>
                    </ul>
                    <!--//쪽지 상세-->


                </div>
                <!--//쪽지 컨텐츠 박스-->
            </div>
            <!--//쪽지 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
    

</body>
</html>