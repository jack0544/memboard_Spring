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
                    ?????? ????????????
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-2" href="mJoinForm">
                    <i class="fas fa-user-circle opacity-6 text-dark me-1"></i>
                    ????????????
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-2" href="mLoginForm">
                    <i class="fas fa-key opacity-6 text-dark me-1"></i>
                    ?????????
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
                  <h4 class="font-weight-bolder">????????????</h4>
                </div>
                <div class="card-body">
                  <form action="mJoin" method="POST" name="joinForm" enctype="multipart/form-data">
                    <!-- ????????? -->
                    <div class="input-group input-group-outline mb-3">
                      <input type="text" class="form-control" id="memId" name="memId" onkeyup="checkId()" style="outline-color: #FE6B8B;" placeholder="?????????" />
                    </div>
                    <span id="check1"></span>
					<!-- ???????????? -->
                    <div class="input-group input-group-outline mb-3">
                      <input type="password" class="form-control" name="memPw" id="memPw" onkeyup="pwRegexp()" style="outline-color: #FE6B8B;" placeholder="????????????" />
                    </div>
                    <span id="pwResult1"></span>
					<!-- ???????????? ?????? -->
                    <div class="input-group input-group-outline mb-3">
                      <input type="password" class="form-control" id="checkPw" onkeyup="pwCheck()" style="outline-color: #FE6B8B;" placeholder="???????????? ??????" />
                    </div>
                    <span id="pwResult2"></span>
					<!-- ?????? -->
                    <div class="input-group input-group-outline mb-3">

                      <input type="text" class="form-control" id="memName" name="memName" onkeyup="nameRegexp()" style="outline-color: #FE6B8B;" placeholder="??????" />
                    </div>
                    <span id="pwResult3"></span>
					<!-- ???????????? -->
                    <div class="input-group input-group-outline mb-3">

                      <input type="date" class="form-control" name="memBirth" style="outline-color: #FE6B8B;" />
                    </div>
					<!-- ?????? -->
                    <div class="input-group input-group-outline mb-3">
				  
  						??????&nbsp;<input type="radio" name="memGender" value="??????" style="outline-color: #FE6B8B;" />						
						&nbsp;??????&nbsp;<input type="radio" name="memGender" value="??????" style="outline-color: #FE6B8B;" />		
                    </div>
					<!-- ????????? -->
                    <div class="input-group input-group-outline mb-3">

                      <input type="email" class="form-control"  id="memEmail" name="memEmail" style="outline-color: #FE6B8B;" placeholder="?????????" />
                    
                    </div>
                    <div class="input-group input-group-outline mb-3">
                    <span id="confEmail"><input type="button" style="outline-color: #FE6B8B;" value="???????????? ??????" onclick="checkEmail()"/></span>
					</div>
					
					<!-- ????????? -->
                    <div class="input-group input-group-outline mb-3">

                      <input type="text" class="form-control" name="memPhone" style="outline-color: #FE6B8B;" placeholder="?????????" />
                    </div>
					<!-- ?????? -->
                    <div class="input-group input-group-outline mb-3">
                    
                    <input type="text" class="form-control" name="addr1" id="sample6_postcode" style="outline-color: #FE6B8B;" placeholder="????????????">
					<input type="button" onclick="sample6_execDaumPostcode()" value="???????????? ??????"><br>     
                    </div>
                    <div class="input-group input-group-outline mb-3">
					<input type="text" class="form-control" name="addr2" size="40" id="sample6_address" style="outline-color: #FE6B8B;" placeholder="??????"><br>
					
                    
                    </div>
                    <div class="input-group input-group-outline mb-3">     
					<input type="text" class="form-control" name="addr3" size="40" id="sample6_detailAddress" style="outline-color: #FE6B8B;" placeholder="????????????">
                    
                    </div>
                    
					<!-- ????????? ?????? -->
                    <div class="input-group input-group-outline mb-3">
					<p class="text-info">?????? ????????? ?????? ?????? </p>
                    <input type="file" name="memProfile"/>
                    </div>
                    
                    
                    <div class="text-center">
                      <input type="button" class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0" onclick="checkConfirm()" value="??????" />
                    </div>
                  </form>
                </div>
                <div class="card-footer text-center pt-0 px-lg-2 px-1">
                  <p class="mb-2 text-sm mx-auto">
                    ?????? ???????????? ????????????????
                    <a href="mLoginForm" class="text-primary text-gradient font-weight-bold">????????? ???????????? ??????</a>
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
		pwResult1.innerHTML = "??????????????? 8???????????? 16?????? ????????? ??????????????????.";
		return false;
		
	} else if(spc >= 0){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "??????????????? ???????????? ??????????????????.";
		return false;
	
	} else if(num < 0 || eng < 0 || spe < 0){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "??????, ??????, ??????????????? ???????????? ??????????????????.";
		return false;
	
	} else {
		pwResult1.style.color = "#0000ff";
		pwResult1.innerHTML = "??????????????? ???????????? ?????????.";
		return true;
	}
	

}

function pwCheck(){
	
	let memPw = document.getElementById("memPw").value;
	let checkPw = document.getElementById("checkPw").value;
	let pwResult2 = document.getElementById("pwResult2");
	
	if(memPw == checkPw){
		pwResult2.style.color = "#0000ff";
		pwResult2.innerHTML = "??????????????? ???????????????.";
		return true;
	} else {
		pwResult2.style.color = "#ff0000";
		pwResult2.innerHTML = "??????????????? ???????????? ????????????.";
		return false;
	}
	
	
}

function checkConfirm(){
	

	
	if(!pwRegexp() || !pwCheck()){
		
		alert('??????????????? ??????????????????!');
		
	} else if(!checkEmail2()){
		
		alert('????????? ????????? ??????????????????.');
		
	} else {
		alert('??????????????? ?????????????????????.');
		joinForm.submit();
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
				// ????????? ??? ?????? ???????????? ?????? ??????
				check1.innerHTML = memId + "??? ??????????????? ?????????";
				check1.style.color = "#0000ff";
				
			} else {
				// ????????? ??? ?????? ???????????? ?????? ??????
				check1.innerHTML = memId + "??? ?????? ???????????? ?????????";
				check1.style.color = "#ff0000";
				
			}
		},
		error : function(){
			alert("idoverlap?????? ????????????!");
			
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
			console.log("????????? ????????????1 : " + uuid);
			$("#confEmail").html("<input type='text' id='uuidCheck' placeholder='????????????'/>"
					+" <input type='hidden' value='"+ uuid +"' id='uuid'/>"
					+" <input type='button' value='??????' onclick=\"checkEmail2()\"/>");
		},
		error : function(){
			alert('????????? ?????? ?????? ??????!');
		}
	});
}


function checkEmail2(){
	let uuid = $("#uuid").val();
	console.log("????????? ????????????2 : " + uuid);
	
	let uuidCheck = $("#uuidCheck").val();
	console.log("????????? ???????????? : " + uuidCheck);
	
	let boolUUID = false;
	
	if(uuidCheck==null || uuidCheck==""){
		
	}else if(uuid == uuidCheck){
		alert('?????????????????????.');
		boolUUID = true;
	} else {
		alert('??????????????? ??????????????????.');
	}
	
	return boolUUID;
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                var addr = ''; // ?????? ??????

                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                    addr = data.roadAddress;
                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                    addr = data.jibunAddress;
                }

                

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // ????????? ???????????? ????????? ????????????.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

</html>