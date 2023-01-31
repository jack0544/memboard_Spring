<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1.0">
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

<body class="g-sidenav-show bg-gray-200">
  <%@ include file="menu.jsp" %>
  <div class="main-content position-relative max-height-vh-100 h-100" />
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Board View</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">Board View</h6>
        </nav>	
       <%@ include file="navbar.jsp" %>
      </div>
    </nav>
    <!-- End Navbar -->
    <div class="container-fluid px-2 px-md-4">
      <div class="page-header min-height-300 border-radius-xl mt-4" style="background-image: url('https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fnnt47%2Fbtq7ZzHS4Nn%2FjJwE4sp4pROh93OVSsYDFK%2Fimg.jpg');">
        <span class="mask  bg-gradient-primary  opacity-6"></span>
      </div>
      
      <div class="card card-body mx-3 mx-md-4 mt-n6">
        <div class="row gx-4 mb-2">
      
      
          
          <div class="col-auto my-auto">
            <div class="h-100">
              <h5 class="mb-1">
               ${board.boTitle}
              </h5>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 my-sm-auto ms-sm-auto me-sm-0 mx-auto mt-3">
            <div class="nav-wrapper position-relative end-0">
            <c:if test="${loginId == board.boWriter}">
              <ul class="nav nav-pills nav-fill p-1" role="tablist">
                <li class="nav-item">
                  <a class="nav-link mb-0 px-0 py-1 " href="bModifyForm?boNum=${board.boNum}"/>
                    <i class="material-icons text-lg position-relative">settings</i>
                    <span class="ms-1">게시글 수정</span>
                  </a>
                </li>
              </ul>
              </c:if>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="row">
            <div class="col-12 col-xl-4">
              <div class="card card-plain h-100">
                <div class="card-header pb-0 p-3">
                  <h6 class="mb-0"></h6>
                </div>
                <div class="card-body p-3">
                  <h6 class="text-uppercase text-body text-xs font-weight-bolder">내용</h6>
                  <ul class="list-group">
                    <li class="list-group-item border-0 px-0">
                                        <ul class="list-group">
                    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">작성자 : </strong> &nbsp; ${board.boWriter}</li>
                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">내용 :</strong> &nbsp; ${board.boContent}</li>
                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">날짜 :</strong> &nbsp; ${board.boDate}</li>
                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">조회수 :</strong> &nbsp; ${board.boHit}</li>
                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">파일 :</strong> &nbsp; <img src="resources/FileUpload/${board.boFileName}" width="400px" height="400px"></li>
                  </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
		<hr style="border: solid;"/>
  	 	
	 	<div id="cmtArea"></div>
	 	<div>
	 		<input type="hidden" value="${board.boNum}" id="cbNum" />
	 		<input type="hidden" value="${loginId}" id="cmtWriter" />
	 		<textarea rows="5" cols="50" id="cmtContent" onfocus="checkLogin()"></textarea>
	 		<button onclick="cmtWrite()">댓글 입력</button>
	 	</div>
	 	
        </div>
  </div>

	<%@ include file="footer.jsp" %>

  </div>
  
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
  <script src="resources/assets/js/material-dashboard.min.js?v=3.0.4"></script>
<script>
function checkLogin(){
	if(${loginId eq null}){
		$("#cmtContent").blur();
		alert('로그인 후 사용해주세요');
		location.href="mLoginForm";
	}
}

</script>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script>
	
	let cbNum = ${board.boNum};
	
	$.ajax({
		type : "GET",
		url : "comment/cList",
		data : {
			"cbNum" : cbNum
		},
		dataType : "json",
		success : function(list){
			
			commentList(list);	// commentList라는 함수를 db에서 받아온 result값으로 가져와서 호출
		},
		error : function(){
			alert("댓글 불러오기 통신 실패..~");
		}
	});
	
	
	
	// 댓글 불러오기 함수
	function commentList(list){ 
		let output = "";
		
		output += "<table style='border-collapse: collapse; padding: 10px;'>";
		output += "<tr style='border-collapse: collapse; padding: 10px;'>";
		output += "<th style='border-collapse: collapse; padding: 10px; color : black;'>작성자</th>";
		output += "<th style='border-collapse: collapse; padding: 10px; color : black;'>내용</th>";
		output += "<th style='border-collapse: collapse; padding: 10px; color : black;'>작성일</th>";

		output += "<th style='border-collapse: collapse; padding: 10px; color : black;'>수정</th>";
		output += "<th style='border-collapse: collapse; padding: 10px; color : black;'>삭제</th>";

		output += "</tr>";
		
		for(let i in list){
		output += "<tr>";
		
		output += "<td style='border-collapse: collapse; padding: 10px;'>"+ list[i].cmtWriter +"</td>";
		output += "<td style='border-collapse: collapse; padding: 10px;'><span id='cmtModiContent"+list[i].cmtNum+"'>"+ list[i].cmtContent +"</span></td>";
		output += "<td style='border-collapse: collapse; padding: 10px;'>"+ list[i].cmtDate +"</td>";
		
		if('${loginId}' == list[i].cmtWriter || '${loginId}' == 'admin'){
			
		output += "<td style='border-collapse: collapse; padding: 10px;'><button onclick='cmtCon("+ list[i].cmtNum +", "+ list[i].cbNum +")'>수정</button></td>";
		output += "<td style='border-collapse: collapse; padding: 10px;'><button onclick='cmtDelete("+ list[i].cmtNum +", "+ list[i].cbNum +")'>삭제</button></td>";
		} else {
		output += "<td style='border-collapse: collapse; padding: 10px;'></td><td style='border-collapse: collapse; padding: 10px;'></td>";
			
		}
			

		output += "</tr>";
		}
		output += "</table>";
		
		document.getElementById("cmtArea").innerHTML = output;
		
		
	}
	
	// 수정 버튼을 눌렀을 때
	function cmtCon(cmtNum, cbNum){
		
		$("#cmtModiContent"+cmtNum).html("<input type='text' id='cContent'/> <input type='button' value='확인' onclick='cmtModify("+cmtNum+", "+cbNum+")'/>");
	}
	
	// 내용 작성 후 확인버튼 눌렀을때
	function cmtModify(cmtNum, cbNum){
		let cmtContent = $("#cContent").val();
		
		$.ajax({
			type : "POST",
			url : "comment/cmtModify",
			data : {
				"cbNum" : cbNum,
				"cmtNum" : cmtNum,
				"cmtContent" : cmtContent
			},
			dataType : "json",
			success : function(list){
				commentList(list);
			},
			error : function(){
				alert("댓글 수정 통신 실패!");
			}
		});
		
	}
	
	function cmtDelete(cmtNum, cbNum){
		
		$.ajax({
			type : "POST",
			url : "comment/cmtDelete",
			data : {
				"cbNum" : cbNum,
				"cmtNum" : cmtNum
			},
			dataType : "json",
			success : function(list){
				commentList(list);
			},
			error : function(){
				alert('댓글 삭제 통신 실패')
			}
		});
	
		console.log("cbNum : " + cbNum);
		console.log("cmtNum : " + cmtNum);
	}
	
	// 댓글 입력
	function cmtWrite(){
		let cmtWriter = $("#cmtWriter").val(); 
		let cmtContent = $("#cmtContent").val(); 
		// #은 id, .은 클래스
		let cbNum = $("#cbNum").val(); 
		
		$.ajax({
			type : "POST",
			url : "comment/cmtWrite",
			data : {
				"cbNum" : cbNum,
				"cmtWriter" : cmtWriter,
				"cmtContent" : cmtContent
			},
			dataType : "json",
			success : function(list){
				commentList(list);
				$("#cmtContent").val("") ;
				
			},
			error : function(){
				alert('댓글 작성 통신 실패');
			}
		});
	
		console.log("cmtWriter : " + cmtWriter);
		console.log("cmtContent : " + cmtContent);
		console.log("cbNum : " + cbNum);
	}

	
	
	
</script>

</html>