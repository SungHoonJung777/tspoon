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
            <h1>가입하기</h1>
           <jsp:include page="/HTML/sample/html/common/menu.jsp"></jsp:include>
        <!--//해더영역-->
        <form action="" method="post" name="frm" id="frm" class="frm">
        <!--컨텐츠 본문//-->
	        <div id="content">
	            <!--가입하기 전체//-->
	            <div  class="joinWrap">
	                <h2>T SPOON ID로<br/>밀크T 모든 사이트를 모두 이용하실 수 있습니다.</h2>
	                <!--아이디및 비밀번호입력//-->
	                <!--수정불가한 입력값은 noEdit 클래스추가-->
	                <!--<div class="formBox noEdit">
	                    <input type="text" class="itxt" id="iname" name="iname" placeholder="이름" disabled="disabled" value="불러온 수정불가 영역표시" />
	                    <label class="title" for="iname">이름</label>
	                </div>
	                -->
	                <h3 class="condition">필수 정보</h3>
	                <div class="formBox">
	                    <input type="text" class="itxt" id="iname" name="iname" placeholder="이름" />
	                    <label class="title" for="iname">이름</label>
	                <span class="txtSub" id="nameError">이름을 입력해주세요.</span>
	                </div>
	                <div class="formBox">
	                    <input type="text" class="itxt" id="idn" name="idn" placeholder="아이디" />
	                    <label class="title" for="idn">아이디</label>
	                    <span class="txtSub" id="idError">아이디를 입력해주세요.</span>
	                </div>
	               <div class="formBox">
					    <input type="password" class="itxt" id="password" name="pwd" placeholder="비밀번호 (영문, 숫자, 특수문자 조합 10~16자리)" />
					    <label class="title" for="password">비밀번호</label>
					    <span class="txtSub" id="passwordError">비밀번호를 입력해주세요.</span>
					</div>
					<div class="formBox">
					    <input type="password" class="itxt" id="password2" name="pwdCheck" placeholder="비밀번호 재 입력" />
					    <label class="title" for="password2">비밀번호 재 입력</label>
					    <span class="txtSub" id="passwordMatchError"></span>
					</div>
	                <!--//아이디및 비밀번호입력-->
	                <!--생일 생년월일//-->
	                <div class="formBox birthday">
					    <label class="title year" for="selectborn1">생년</label>
					    <select class="year" id="selectborn1">
					        <option value="" disabled="disabled" selected="selected">생년</option>
					    </select>
					    <label class="title month" for="selectborn2">월</label>
					    <select class="month" id="selectborn2">
					        <option value="" disabled="disabled" selected="selected">월</option>
					        <option>1</option>
					        <option>2</option>
					        <option>3</option>
					        <option>4</option>
					        <option>5</option>
					        <option>6</option>
					        <option>7</option>
					        <option>8</option>
					        <option>9</option>
					        <option>10</option>
					        <option>11</option>
					        <option>12</option>
					    </select>
					    <label class="title day" for="selectborn3">일</label>
					    <select class="day" id="selectborn3">
					        <option value="" disabled="disabled" selected="selected">일</option>
					    </select>
					    <span class="txtSub" id="ageError">만 14세 미만은 회원 가입이 불가합니다.</span>
					</div>
	                <!--//생일 생년월일-->
	                <!--휴대폰 인증번호//-->
	                <div class="formBox pNumber_01" >
	                    <input type="tel" class="itxt" id="telnumber" name="phone" placeholder="휴대폰 번호" maxlength="14" />
	                    <label class="title" for="telnumber">휴대폰 번호</label>
	                 	<span class="txtSub" id="phoneError">휴대폰 번호 입력.</span>
	                </div>
	            
	                <!--//휴대폰 인증번호-->
	                <!--이메일
	                <div class="formBox eMail" >
	                    <input type="text" class="itxt" id="email" placeholder="이메일 주소"  />
	                    <label class="title" for="email">이메일 주소</label>
	                    <span class="txt">@</span>
	                    <select id="email">
	                        <option value="00" disabled="disabled" selected="selected">선택</option>
	                        <option value="01">daum.net</option>
	                        <option value="02">hanmail.net</option>
	                        <option value="03">naver.com</option>
	                        <option value="04">gmail.com</option>
	                        <option value="05">yahoo.co.kr</option>
	                        <option value="06">hotmail.com</option>
	                        <option value="07">nate.com</option>
	                        <option value="99">직접입력</option>
	                    </select>
	                </div>
	                <div class="formBox eMail" >
	                    <input type="text" class="itxt" id="email" placeholder="이메일 주소"  />
	                    <label class="title" for="email">이메일 주소</label>
	                    <span class="txt">@</span>
	                    <input type="text" class="itxtMail" id="email" placeholder="직접입력"  />
	                </div>
	                이메일-->
	                <!--관심분야선택
	                <div class="formBox atten" >
	                    <label class="title" for="atten">관심분야 선택</label>
	                    <select id="atten">
	                        <option value="" disabled="disabled" selected="selected">관심분야 선택</option>
	                        <option value="01">유/초등</option>
	                        <option value="02">중/고등</option>
	                    </select>
	                </div>
	                관심분야선택-->
	                <!--학년//-->
	               
	                <!--//학년-->
	                <h3 class="condition">선택 사항</h3>
	                <!--성별구분//-->
	                <div class="formBox sexSelect">
	                    <span class="title" >성별</span>
	                    <input type="radio"  id="r1" name="rr" value="M"  checked="checked"/><label for="r1"><span></span>남자</label>
	                    <input type="radio"  id="r2" name="rr" value="G"/><label for="r2"><span></span>여자</label>
	                    <!-- <span class="txtSub">성별을 선택해주세요.</span> -->
	                </div>
	                <!--//성별구분-->
	                <!--이용약관 동의//-->
	                <div class="agreeBox ">
	                    <dl>
	                        <dt>
	                            <input type="checkbox"  id="checkall" name=""  />
	                            <label for="checkall"><span></span>통합 이용약관, 개인정보수집 및 이용, 위치정보이용약관 (선택), 프로모션  전화 및 SMS 안내수신 (선택), 개인정보 제 3자 제공동의 (선택),에모두 동의 합니다.</label>
	                        </dt>
	                        <dd>
	                            <input type="checkbox"  class="checkbox" id="cc1" name=""  />
	                            <label for="cc1"><span></span>통합 이용약관 (필수)</label>
	                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
	                        </dd>
	                        <dd>
	                            <input type="checkbox"  class="checkbox"  id="cc2" name=""  />
	                            <label for="cc2"><span></span>개인정보 수집·이용 동의 (필수)</label>
	                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
	                        </dd>
	                        <dd>
	                            <input type="checkbox"  class="checkbox"  id="cc3" name=""  />
	                            <label for="cc3"><span></span>위치정보 이용약관 (선택)</label>
	                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
	                        </dd>
	                        <dd>
	                            <input type="checkbox"  class="checkbox"  id="cc4" name=""  />
	                            <label for="cc4"><span></span>마케팅 활용동의 (선택)</label>
	                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
	                            <!-- <ul class="moreChk">
	                                <li><input type="checkbox" id="agreeEmail" name="agreeEmail"><label for="agreeEmail"><span></span>이메일</label></li>
	                                <li><input type="checkbox" id="agreeSms" name="agreeSms"><label for="agreeSms"><span></span>SMS</label></li>
	                                <li><input type="checkbox" id="agreePhone" name="agreePhone"><label for="agreePhone"><span></span>전화</label></li>
	                            </ul> -->
	                        </dd>
	                        <dd>
	                            <input type="checkbox"  class="checkbox"  id="cc5" name=""  />
	                            <label for="cc5"><span></span>제3자 제공동의 (선택)</label>
	                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
	                        </dd>
	                        <dd class="disabled">
	                            <input type="checkbox" class="checkbox"   id="cc6" name=""  />
	                            <label for="cc6"><span></span>천재교육 이용약관 동의 (선택)</label>
	                            <span class="moreBtn"><a href="#none" onclick="javascript:alert('어드민등록한거 새창 열림')">전문보기</a></span>
	                        </dd>
	                    </dl>
	                </div>
					<p class="txt_02 center">※ 데이터 집계 작업으로 인해 자녀 등록이 불가능한 경우, 5분 후에 이용 부탁드립니다.</p>
	                <!--//이용약관 동의-->
	                <button class="button blue big bold" id="joinBtn" disabled="disabled" style="background: gray;">가입하기</button>
	            </div>
	            <!--//가입하기 전체-->
	        </div>
        <!--//컨텐츠 본문-->
        </form>
        
    </div>
    <!--//웹영역 전체-->
    
    <script type="text/javascript">
	var selectElement = document.getElementById("selectborn1");
    
    var currentYear = new Date().getFullYear();
    
    for (var year = currentYear; year >= 1950; year--) {
        var option = document.createElement("option");
        option.text = year;
        option.value = year;
        selectElement.appendChild(option);
    }
    
    

    var selectElement = document.getElementById("selectborn3");


    function updateDays() {

        var selectedMonth = document.getElementById("selectborn2").value;

 
        selectElement.innerHTML = '<option value="" disabled="disabled" selected="selected">일</option>';

   
        if (selectedMonth === "2") {
   
            var selectedYear = document.getElementById("selectborn1").value;
            var isLeapYear = (selectedYear % 4 === 0 && selectedYear % 100 !== 0) || (selectedYear % 400 === 0);
            
         
            for (var day = 1; day <= (isLeapYear ? 29 : 28); day++) {
                var option = document.createElement("option");
                option.text = day;
                option.value = day;
                selectElement.appendChild(option);
            }
        } else if (selectedMonth === "4" || selectedMonth === "6" || selectedMonth === "9" || selectedMonth === "11") { // 30일인 월
            for (var day = 1; day <= 30; day++) {
                var option = document.createElement("option");
                option.text = day;
                option.value = day;
                selectElement.appendChild(option);
            }
        } else {
            for (var day = 1; day <= 31; day++) {
                var option = document.createElement("option");
                option.text = day;
                option.value = day;
                selectElement.appendChild(option);
            }
        }
    }

    document.getElementById("selectborn2").addEventListener("change", updateDays);
    
    

    
   let name = false;
   let id = false;
   let pwd  = false;
   let pwdMacth = false;
   let birth = false; 
   let phone = false; 

 	
    var nameField = document.getElementById("iname");
    var nameError = document.getElementById("nameError");

    nameField.addEventListener("blur", function() {
        var nameValue = nameField.value.trim();

        if (nameValue === "") {
            nameError.textContent = "이름을 입력해주세요.";
            return;
        }

        if (nameValue.length > 6) {
            nameError.textContent = "이름은 5자리 이하여야 합니다.";
            return;
        }

        var specialChars = /[!@#$%^&*(),.?":{}|<>]/;

        if (specialChars.test(nameValue)) {
            nameError.textContent = "이름에는 특수문자를 포함할 수 없습니다.";
            return;
        }

        nameError.textContent = "이름 확인";
        name = true;
        nameError.style.color = 'blue';
        nameField.setAttribute("readonly","readonly");
        console.log(name);
    });
 

    var idField = document.getElementById("idn");
    var idError = document.getElementById("idError");
    

    	idField.addEventListener("blur", function() {
        var idValue = idField.value.trim();

        if (idValue === "") {
        	idError.textContent = "아이디를 입력해주세요.";
            return;
        }

        if (idValue.length > 12) {
        	idError.textContent = "아이디는 12자리 이하여야 합니다.";
            return;
        }

        var specialChars = /[!@#$%^&*(),.?":{}|<>]/;

        if (specialChars.test(idValue)) {
        	idError.textContent = "이름에는 특수문자를 포함할 수 없습니다.";
            return;
        }

        idError.textContent = "아이디 확인";
        id = true;
        idError.style.color = 'blue';
        idField.setAttribute("readonly","readonly");
        console.log(id);
    });
    	function checkDuplicate() {
    	    var id = document.getElementById("idn").value;

    	    // Ajax 요청
    	    var xhr = new XMLHttpRequest();
    	    xhr.open("POST", "/checkDuplicateId", true);
    	    xhr.setRequestHeader("Content-Type", "application/json");
    	    xhr.onreadystatechange = function () {
    	        if (xhr.readyState === 4 && xhr.status === 200) {
    	            var response = JSON.parse(xhr.responseText);
    	            if (response.duplicate) {
    	                document.getElementById("idError").textContent = "이미 사용 중인 아이디입니다.";
    	            } else {
    	                document.getElementById("idError").textContent = "사용 가능한 아이디입니다.";
    	            }
    	        }
    	    };
    	    xhr.send(JSON.stringify({ id: id }));
    	}

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
    	    
    	    var yearField = document.getElementById("selectborn1");
    	    var monthField = document.getElementById("selectborn2");
    	    var dayField = document.getElementById("selectborn3");
    	    var ageError = document.getElementById("ageError");

    	
    	    yearField.addEventListener("change", validateAge);
    	    monthField.addEventListener("change", validateAge);
    	    dayField.addEventListener("change", validateAge);

    	    function validateAge() {
    	        var today = new Date();
    	        var selectedYear = parseInt(yearField.value);
    	        var selectedMonth = parseInt(monthField.value);
    	        var selectedDay = parseInt(dayField.value);
    	        var minAgeDate = new Date(today.getFullYear() - 14, today.getMonth(), today.getDate());

    	        var selectedDate = new Date(selectedYear, selectedMonth - 1, selectedDay);

    	        if (selectedDate > minAgeDate) {
    	            ageError.textContent = "만 14세 미만은 회원 가입이 불가합니다.";
    	        } else {
    	        	ageError.textContent = "";
    	            birth = true;
    	            ageError.style.color = '';
    	 
        	        console.log(birth);
    	        }
    	    }
    	    

    	

    	    	

    	 
    	    	const checkAllCheckbox = document.querySelector('#checkall');

    	    	checkAllCheckbox.addEventListener("click", function(e) {
    	    	    const checkboxes = document.querySelectorAll('.checkbox');

    	    	    if (checkAllCheckbox.checked) {
    	    	        checkboxes.forEach(function(checkbox) {
    	    	            checkbox.checked = true;
    	    	        });
    	    	    } else {
    	    	        checkboxes.forEach(function(checkbox) {
    	    	            checkbox.checked = false;
    	    	            
    	    	        });
    	    	    }
    	    	});

    	    	document.querySelectorAll('.checkbox').forEach(function(checkbox) {
    	    	    checkbox.addEventListener("click", function(e) {
    	    	        const allChecked = Array.from(document.querySelectorAll('.checkbox')).every(function(checkbox) {
    	    	            return checkbox.checked;
    	    	        });

    	    	        if (allChecked) {
    	    	            checkAllCheckbox.checked = true;
    	    	        } else {
    	    	            checkAllCheckbox.checked = false;
    	    	        }
    	    	    });
    	    	});
				
    	    	

        	    var phoneField = document.getElementById("telnumber");
        	    var phoneError = document.getElementById("phoneError");
        	    

        	    	phoneField.addEventListener("blur", function() {
        	        var phoneValue = phoneField.value.trim();

        	        if (phoneValue === "") {
        	        	phoneError.textContent = "전화번호를 입력해주세요.";
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
        	        if (name && id && pwd && pwdMacth && birth && phone ) {
        	    	    
        	    	    document.querySelector('#joinBtn').disabled = false;
        	    	    document.querySelector('#joinBtn').style.backgroundColor = '#057cfc';
        	    	    document.querySelector("#joinBtn").addEventListener("click", function(){
        	    	    	const frm = document.querySelector("#frm");
        	    	        var year = document.querySelector("#selectborn1").value;
        	    	        var month = document.querySelector("#selectborn2").value;
        	    	        var day = document.querySelector("#selectborn3").value;

        	    	  
        	    	        console.log("Month:", month);
        	    	        console.log("Day:", day);
        	    	        console.log("ㄴㄴ!:", document.querySelector('#cc1').checked);
        	    	        console.log("ㄴㄴ!:", document.querySelector('#cc2').checked);
        	    	        if(document.querySelector('#cc1').checked == false || document.querySelector('#cc2').checked == false ){
            	    	    	alert("필수 약관동의를 선택해주세요.");
            	    	    }
            	    	    else {
            	    	    	frm.action = "/milkT/kmocMain.do?command=join&year=" +year+"&month=" +month
    	    	    			+"&day=" +day;
    	    	    			frm.submit();
            	    	    }
        	    	    	
        	    	    });
        	    	    
        	    	    
        	    	}
        	    });	
    </script>
</body>
</html>