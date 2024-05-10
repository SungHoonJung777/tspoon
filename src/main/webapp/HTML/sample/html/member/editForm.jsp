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
            <h1>개인정보수정</h1>
             <jsp:include page="/HTML/sample/html/common/menu_login.jsp"></jsp:include>
        <!--//해더영역-->
			<form method="post" id="frm" class="frm" name="frm" enctype="multipart/form-data"> 
	        <!--컨텐츠 본문//-->
		        <input type="hidden" id="hiddenPwd"name="pwd" value="${memberList[0].member_pwd}">
		         <input type="hidden" id="hiddenPhone" name="phone" value="${memberList[0].member_phone}">
		          <input type="hidden" id="idx" name="idx" value="${memberList[0].member_idx}">
		        <div id="content">
		            <!--개인정보 수정 전체//-->
		            <div  class="editPageWrap ">
		                <div class="myProfile"> 
		                 	<c:choose>
		                 		<c:when test="${fileLists[4].orgFile eq null || fileLists[4].orgFile eq 'null' || fileLists[4].orgFile eq '' }">
		                 		<p class="myPhoto"><img src="/milkT/HTML/cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_tmp.png"  alt="내 프로필 이미지" /></p>
		                 			
		                 		</c:when>
		                 		<c:otherwise>
		                 		<p class="myPhoto"><img src="/milkT/img/${fileLists[4].orgFile}" alt="내 프로필 이미지" /></p>
		                 		</c:otherwise>
		                 	</c:choose>
		                 	
		                    <!--<p class="myPhoto"><img src="//cdndata.milkt.co.kr/ele/tspoon/Images/common/img_profile_noimg.png" alt="프로필 미설정" /></p>-->
		                    <div class="btnFile">
		                        <label for="fileupload">프로필 사진 설정</label>
		                        <input type="file" name="file" id="fileupload" multiple>                       
		                    </div>
		                </div>
		                <div class="editPage">
		                    <!--아이디및 비밀번호입력//-->
		                    <div class="formBox noEdit mt_40"><!--수정불가 noEdit 추가-->
		                        <input type="text" class="itxt" id="iname" name="iname" placeholder="이름" disabled="disabled" value="${memberList[0].member_name}" />
		                        <label class="title" for="iname">이름</label>
		                    </div>
		                    <div class="formBox noEdit memberChange">
		                        <input type="text" class="itxt" id="idn" name="idn" placeholder="아이디" disabled="disabled" value="${memberList[0].member_user_id} "  />
		                        <label class="title" for="idn">아이디</label>
		
		                    </div>
		                   <div class="formBox pwChange" >
		                        <input type="password" class="itxt" id="password" name="pwd"disabled="disabled" placeholder="비밀번호 (영문, 숫자, 특수문자 조합 10~16자리)" />
		                        <label class="title" for="password">비밀번호</label>
								 <button class="btn" id="pwdChange">변경</button>
								 <span class="txtSub" id="passwordError"></span>
		                    </div>
		                    <div class="formBox" >
		                        <input type="password" class="itxt" id="password2" disabled="disabled" placeholder="비밀번호 재 입력" />
		                        <label class="title" for="password2">비밀번호 재 입력</label>
		                       <span class="txtSub" id="passwordMatchError"></span>
		                    </div>
		                    <!--//아이디및 비밀번호입력-->
		                    <!--생일 생년월일//-->
		                    <div class="formBox birthday noEdit" >
		                         <label class="title year" for="selectborn1">생년</label>
		                         <select class="year" id="selectborn1">
		                            <option value="">생년</option>
		                            <option  disabled="disabled" selected="selected">${year}</option>
		                        </select>
		                        <label class="title month" for="selectborn2">월</label>
		                        <select class="month" id="selectborn2">
		                            <option value="" >월</option>
		                            <option disabled="disabled" selected="selected">${month }</option>
		                        </select>
		                        <label class="title day" for="selectborn3">일</label>
		                        <select class="day"  id="selectborn3">
		                            <option value="" disabled="disabled" selected="selected">일</option>
		                            <option disabled="disabled" selected="selected">${day }</option>
		                        </select>
		                    </div>
		                    <!--//생일 생년월일-->
		                    <!--성별구분//-->
		                    <div class="formBox sexSelect noEdit">
		                        <span class="title" >성별</span>
		                        <c:choose>
		                        	<c:when test="${memberList[0].member_jender eq 'M'}">
		                        
		                        		<input type="radio"  id="r1" name="rr"  checked  /><label for="r1"><span></span>남자</label>
		                        		<input type="radio"  id="r2" name="rr"  /><label for="r2"><span></span>여자</label>
		                        	</c:when>
		                        	 <c:otherwise>
		                        		<input type="radio"  id="r1" name="rr"   /><label for="r1"><span></span>남자</label>
		                        		<input type="radio"  id="r2" name="rr"  checked /><label for="r2"><span></span>여자</label>
		                        	</c:otherwise>
		                        </c:choose>
		                       
		                        
		                    </div>
		                    <!--//성별구분-->
		                    <!--휴대폰 인증번호//-->
		                    <div class="formBox pNumber_01" >
		                        <input type="tel" class="itxt" id="telnumber" name="phone"placeholder="휴대폰 번호" disabled="disabled"  maxlength="14" value="${memberList[0].member_phone}" />
		                        <label class="title" for="telnumber" >휴대폰 번호</label>
		                         <button class="btn" id="phoneChange">변경</button>
		                       <span class="txtSub" id="phoneError"></span>
		                    </div>
		              
		                    <button class="button blue big mt_40" id="modifyEdit">확인</button>
		                </div>
		            </div>
		            <!--//개인정보 수정  전체-->
		        </div>
			</form>
        <!--//컨텐츠 본문-->
    </div>
    
    <script type="text/javascript">
    let check = false;
    let check2 = false;
 
    
    document.querySelector("#pwdChange").addEventListener("click", function(){
       
   check = confirm("비밀번호를 변경하시겠습니까?");
   if ( check ) {
            document.querySelector("#password").removeAttribute("disabled");
            document.querySelector("#password2").removeAttribute("disabled");
            document.querySelector("#pwdChange").setAttribute("disabled", true);
            document.querySelector("#pwdChange").style.backgroundColor = "gray";
            document.querySelector("#modifyEdit").setAttribute("disabled", true);
            document.querySelector("#modifyEdit").style.backgroundColor = "gray";
            
        	var passwordField = document.getElementById("password");
            var password2Field = document.getElementById("password2");
            var passwordError = document.getElementById("passwordError");
            var passwordMatchError = document.getElementById("passwordMatchError");

            password2Field.addEventListener("blur", function() {
                var passwordValue = passwordField.value;
                var password2Value = password2Field.value;

                if (passwordValue !== password2Value) {
                    passwordMatchError.textContent = "비밀번호가 일치하지 않습니다.";
                    return;
                }

                passwordMatchError.textContent = "비밀번호 재입력 확인";
                pwdMacth = true;
                passwordMatchError.style.color = 'blue';
                password2Field.setAttribute("readonly","readonly");
                console.log(pwdMacth);
                document.querySelector('#modifyEdit').disabled = false;
                document.querySelector("#modifyEdit").style.backgroundColor = "#057cfc";
            });

            document.getElementById("frm").addEventListener("submit", function(event) {
                if (passwordField.value !== password2Field.value) {
                    passwordMatchError.textContent = "비밀번호가 일치하지 않습니다.";
                    event.preventDefault(); 
                }
            });
            
            passwordField.addEventListener("blur", function() {
               
                var passwordValue = passwordField.value;

               
                var passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[~!@#$%^&*()_+{}|:"<>?`\-=[\]\\;',./]).{10,16}$/;

              
                if (!passwordRegex.test(passwordValue)) {
                    passwordError.textContent = "비밀번호는 영문, 숫자, 특수문자를 포함한 10~16자리여야 합니다.";
                    return;
                }

         
                passwordError.textContent = "비밀번호 확인";
                pwd = true;
                passwordError.style.color = 'blue';
                passwordField.setAttribute("readonly","readonly");
                console.log(pwd);
               
            });
        }
    });
    document.querySelector("#phoneChange").addEventListener("click", function(){
    	check2 = confirm("핸드폰 번호를 변경하시겠습니까?")
        
        if (check2) {
            document.querySelector("#telnumber").removeAttribute("disabled");

            document.querySelector("#phoneChange").setAttribute("disabled", true);
            document.querySelector("#phoneChange").style.backgroundColor = "gray";
            document.querySelector("#modifyEdit").setAttribute("disabled", true);
            document.querySelector("#modifyEdit").style.backgroundColor = "gray";
        
            
            var phoneField = document.getElementById("telnumber");
            var phoneError = document.getElementById("phoneError");
            

            	phoneField.addEventListener("blur", function() {
                var phoneValue = phoneField.value.trim();

                if (phoneValue === "") {
                	phoneError.textContent = "핸드폰번호를 입력해주세요.";
                    return;
                }

                if (phoneValue.length != 11) {
                	phoneError.textContent = "- 없이 핸드폰번호 11자리를 입력해주세요 ";
                    return;
                }

                var specialChars = /[!@#$%^&*(),.?":{}|<>]/;

                if (specialChars.test(phoneValue)) {
                	phoneError.textContent = "핸드폰번호에는 특수문자를 포함할 수 없습니다.";
                    return;
                }

                phoneError.textContent = "핸드폰번호 확인";
                phone = true;
                phoneError.style.color = 'blue';
                phoneField.setAttribute("readonly","readonly");
                document.querySelector('#modifyEdit').disabled = false;
                document.querySelector("#modifyEdit").style.backgroundColor = "#057cfc";
            });	
        }
    });
    
    
 	document.querySelector("#modifyEdit").addEventListener("click", function(){
 		const frm = document.querySelector("#frm");
 		if(check == false && check2 == false){
 			const frm = document.querySelector("#frm");
 			const pwd = document.querySelector("#hiddenPwd");
 			const phone = document.querySelector("#hiddenPhone");
 	    	frm.action = "/milkT/kmocMain.do?command=updateEdit&pwd=" + pwd.value + "&phone=" + phone.value;
 	    	frm.submit();
 	    }
       
 		if(check == true && check2 == false){
 			const frm = document.querySelector("#frm");
 			const pwd = document.querySelector("#password");
 			const phone = document.querySelector("#hiddenPhone");
 	    	frm.action = "/milkT/kmocMain.do?command=updateEdit&pwd=" + pwd.value + "&phone=" + phone.value;
 	    	frm.submit();
 	    }
       
 		if(check == false && check2 == true){
 			const frm = document.querySelector("#frm");
 			const pwd = document.querySelector("#hiddenPwd");
 			const phone = document.querySelector("#telnumber");
 	    	frm.action = "/milkT/kmocMain.do?command=updateEdit&pwd=" + pwd.value + "&phone=" + phone.value;
 	    	frm.submit();
 	    }
 		
 		if(check == true && check2 == true){
 			const frm = document.querySelector("#frm");
 			const pwd = document.querySelector("#password");
 			const phone = document.querySelector("#telnumber");
 	    	frm.action = "/milkT/kmocMain.do?command=updateEdit&pwd=" + pwd.value + "&phone=" + phone.value;
 	    	frm.submit();
 	    }
       
    });
    
    

   
    </script>
    <!--//웹영역 전체-->
</body>
</html>