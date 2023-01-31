<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/favicon.ico">
<link rel="icon" type="image/ico" href="resources/assets/img/favicon.ico">
  <title>
    Material Dashboard 2 by Creative Tim
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="resources/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="resources/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="resources/assets/css/material-dashboard.css?v=3.0.4" rel="stylesheet" />
</head>

<body>
  <div class="container position-sticky z-index-sticky top-0">
    <div class="row">
      <div class="col-12">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg blur border-radius-lg top-0 z-index-3 shadow position-absolute mt-4 py-2 start-0 end-0 mx-4">
          <div class="container-fluid ps-2 pe-0">
            <a class="navbar-brand font-weight-bolder ms-lg-0 ms-3 " href="">
              Menu
            </a>
            <button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon mt-2">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </span>
            </button>
            <div class="collapse navbar-collapse" id="navigation">
              <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                  <a class="nav-link d-flex align-items-center me-2 active" aria-current="page" href="index">
                    <i class="fa fa-chart-pie opacity-6 text-dark me-1"></i>
                    메인 화면으로
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-2" href="mView?memId=${loginId}">
                    <i class="fas fa-user-circle opacity-6 text-dark me-1"></i>
                    이전 페이지로
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <!-- End Navbar -->
      </div>
    </div>
  </div>
  <main class="main-content  mt-0">
    <section>
      <div class="page-header min-vh-100">
        <div class="container">
          <div class="row">
            <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 start-0 text-center justify-content-center flex-column">
              <div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center" style="background-image: url('resources/assets/img/illustrations/illustration-signup.jpg'); background-size: cover;">
              </div>
            </div>
            <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column ms-auto me-auto ms-lg-auto me-lg-5">
              <div class="card card-plain">
                <div class="card-header">
                  <h4 class="font-weight-bolder">수정</h4>
                </div>
                <div class="card-body">
                  <form action="mModify" method="POST" name="modiForm" enctype="multipart/form-data">
                    <!-- 아이디 -->
                    <div class="input-group input-group-outline mb-3">		

				<input type="text" name="memId" value="${member.memId}" readonly>

                    </div>
                    <span id="check1"></span>
					<!-- 비밀번호 -->
                    <div class="input-group input-group-outline mb-3">
                      <input type="password" class="form-control" name="memPw" id="memPw" onkeyup="pwRegexp()" placeholder="비밀번호" />
                    </div>
                    <span id="pwResult1"></span>
					<!-- 비밀번호 확인 -->
                    <div class="input-group input-group-outline mb-3">
                      <input type="password" class="form-control" id="checkPw" onkeyup="pwCheck()" placeholder="비밀번호 확인" />
                    </div>
                    <span id="pwResult2"></span>
					<!-- 이름 -->
                    <div class="input-group input-group-outline mb-3">

                      <input type="text" class="form-control" id="memName" name="memName" onkeyup="nameRegexp()" placeholder="이름" />
                    </div>
                    <span id="pwResult3"></span>
					<!-- 생년월일 -->
                    <div class="input-group input-group-outline mb-3">

                      <input type="date" class="form-control" name="memBirth" />
                    </div>
					<!-- 성별 -->
                    <div class="input-group input-group-outline mb-3">
				  
  						남자&nbsp;<input type="radio" name="memGender" value="남성" />						
						&nbsp;여자&nbsp;<input type="radio" name="memGender" value="여성" />		
                    </div>
					<!-- 이메일 -->
                    <div class="input-group input-group-outline mb-3">

                      <input type="email" class="form-control"  id="memEmail" name="memEmail" placeholder="이메일" />
                    
                    </div>
                    <div class="input-group input-group-outline mb-3">
                    <span id="confEmail"><input type="button" value="인증번호 발송" onclick="checkEmail()"/></span>
					</div>
					
					<!-- 연락처 -->
                    <div class="input-group input-group-outline mb-3">

                      <input type="text" class="form-control" name="memPhone" placeholder="연락처" />
                    </div>
					<!-- 주소 -->
                    <div class="input-group input-group-outline mb-3">
                    
                    <input type="text" class="form-control" name="addr1" id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>     
                    </div>
                    <div class="input-group input-group-outline mb-3">
					<input type="text" class="form-control" name="addr2" size="40" id="sample6_address" placeholder="주소"><br>
					
                    
                    </div>
                    <div class="input-group input-group-outline mb-3">     
					<input type="text" class="form-control" name="addr3" size="40" id="sample6_detailAddress" placeholder="상세주소">
                    
                    </div>
                    
					<!-- 프로필 사진 -->
                    <div class="input-group input-group-outline mb-3">
					<p class="text-info">↓↓ 프로필 사진 ↓↓ </p>
                    <input type="file" name="memProfile"/>
                    </div>
                    
                    
                    <div class="text-center">
                      <input type="button" class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0" onclick="checkConfirm()" value="수정" />
                    </div>
                  </form>
                </div>
                <div class="card-footer text-center pt-0 px-lg-2 px-1">
                  <p class="mb-2 text-sm mx-auto">
                    이미 아이디가 있으신가요?
                    <a href="mLoginForm" class="text-primary text-gradient font-weight-bold">로그인 화면으로 이동</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
  <!--   Core JS Files   -->
  <script src="resources/assets/js/core/popper.min.js"></script>
  <script src="resources/assets/js/core/bootstrap.min.js"></script>
  <script src="resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="resources/assets/js/material-dashboard.min.js?v=3.0.4"></script>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script>
function pwRegexp(){
	let memPw = document.getElementById("memPw").value;
	let pwResult1 = document.getElementById("pwResult1");
	
	let num = memPw.search(/[0-9]/);
	let eng = memPw.search(/[a-z]/);
	let spe = memPw.search(/[`~!@#$%^&*|\\\'\":;\/?]/);
	let spc = memPw.search(/\s/);
	
	console.log("num : " + num + " , eng : " + eng + " , spe : " + spe);

	
	if(memPw.length < 8 || memPw.length > 16){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "비밀번호는 8자리에서 16자리 이내로 입력해주세요.";
		return false;
		
	} else if(spc >= 0){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "비밀번호는 공백없이 입력해주세요.";
		return false;
	
	} else if(num < 0 || eng < 0 || spe < 0){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요.";
		return false;
	
	} else {
		pwResult1.style.color = "#0000ff";
		pwResult1.innerHTML = "사용가능한 비밀번호 입니다.";
		return true;
	}
	

}

function pwCheck(){
	
	let memPw = document.getElementById("memPw").value;
	let checkPw = document.getElementById("checkPw").value;
	let pwResult2 = document.getElementById("pwResult2");
	
	if(memPw == checkPw){
		pwResult2.style.color = "#0000ff";
		pwResult2.innerHTML = "비밀번호가 일치합니다.";
		return true;
	} else {
		pwResult2.style.color = "#ff0000";
		pwResult2.innerHTML = "비밀번호가 일치하지 않습니다.";
		return false;
	}
	
	
}

function checkConfirm(){
	

	
	if(!pwRegexp() || !pwCheck()){
		
		alert('비밀번호를 확인해주세요!.');
		
	} else if(!checkEmail2()){
		
		alert('이메일 인증을 진행해주세요.');
		
	} else {
		
		modiForm.submit();
	}
}

function checkId(){
	let memId = document.getElementById("memId").value;
	// location.href = "idCheck?memId=" + memId;
	
	let check1 = document.getElementById("check1");
	
	$.ajax({
		type : "POST",
		url : "idoverlap",
		data : {
			"memId" : memId
		}, 
		dataType : "text", 
		success : function(result){
			if(result=="OK"){
				// 사용할 수 있는 아이디일 경우 실행
				check1.innerHTML = memId + "는 사용가능한 아이디";
				check1.style.color = "#0000ff";
				
			} else {
				// 사용할 수 없는 아이디일 경우 실행
				check1.innerHTML = memId + "는 이미 사용중인 아이디";
				check1.style.color = "#ff0000";
				
			}
		},
		error : function(){
			alert("idoverlap함수 통신실패!");
			
		}
		
	});

	
}

function checkEmail(){
	
	
	let memEmail = $("#memEmail").val();
	
	$.ajax({
		type : "POST",
		url : "mCheckEmail",
		data : { "memEmail" : memEmail },
		dataType : "text",
		success : function(uuid){
			console.log("이메일 인증번호1 : " + uuid);
			$("#confEmail").html("<br/><input type='text' id='uuidCheck'/>"
					+" <input type='hidden' value='"+ uuid +"' id='uuid'/>"
					+" <input type='button' value='인증' onclick=\"checkEmail2()\"/>");
		},
		error : function(){
			alert('이메일 인증 통신 실패!');
		}
	});
}


function checkEmail2(){
	let uuid = $("#uuid").val();
	console.log("이메일 인증번호2 : " + uuid);
	
	let uuidCheck = $("#uuidCheck").val();
	console.log("입력한 인증번호 : " + uuidCheck);
	
	let boolUUID = false;
	
	if(uuidCheck==null || uuidCheck==""){
		
	}else if(uuid == uuidCheck){
		alert('인증성공!');
		boolUUID = true;
	} else {
		alert('인증실패!');
	}
	
	return boolUUID;
}

</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

</html>