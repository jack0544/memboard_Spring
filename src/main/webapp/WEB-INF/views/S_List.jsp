<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/favicon.ico">
<link rel="icon" type="image/ico" href="resources/assets/img/favicon.ico">
  <style>
	table, tr, td, a{
		color : white;
		border-collapse: collapse;
		padding: 10px;
		text-align: center;
	}
	
	
	
	.center{
	margin : auto;
	padding : auto;
	}
	
	

</style>
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
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">List</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">List</h6>
        </nav>	
       <%@ include file="navbar.jsp" %>
      </div>
    </nav>
    <!-- End Navbar -->
     <div class="page-header align-items-start min-vh-100" style="background-image: url('resources/assets/img/M_List.jpg');">
	<div class="center">
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>성별</th>
			<th>연락처</th>
			<c:if test="${loginId == 'admin'}">
			<th>수정</th>
			<th>삭제</th>
			</c:if>
		</tr>
		<c:if test="${loginId != 'admin'}">
		<c:forEach var="list" items="${memberList}">
		<tr>
			<td><a href="mView?memId=${list.memId}"  style="color: gray" >${list.memId}</a></td>			
			<td>${list.memName}</td>			
			<td>${list.memBirth}</td>			
			<td>${list.memGender}</td>			
			<td>${list.memPhone}</td>			
		</tr>
		</c:forEach>
		</c:if>
		
		<c:if test="${loginId == 'admin'}">
		<c:forEach var="list" items="${memberList}">
		<tr>
			<td><a href="mView?memId=${list.memId}"  style="color: gray" >${list.memId}</a></td>			
			<td>${list.memName}</td>			
			<td>${list.memBirth}</td>			
			<td>${list.memGender}</td>			
			<td>${list.memPhone}</td>
			<td><input type="button" onclick="location.href='mModiForm?memId=${member.memId}'" value="수정" /></td>			
			<td><input type="button" onclick="location.href='mDelete?memId=${member.memId}'" value="삭제" /></td>			
		</tr>
		</c:forEach>
		</c:if>
		
		<tr>
	<td colspan="5" class="limitr">
		<select onchange="changeLimit(this.value)">
<!-- 		<select onchange="location.href="'pList?limit='+this.value"> -->
			<option value=>회원 목록 개수</option>
			<option value="5">5개씩</option>
			<option value="10">10개씩</option>
			<option value="20">20개씩</option>
		</select>
	
	</td>
	</tr>
	
	<tr>
	<td colspan="5">

	
	<!-- 페이징 처리 -->
	
	<!-- [이전] 페이지에 대한 처리 -->
	<c:if test="${paging.page <= 1}">[이전]</c:if>
	<c:if test="${paging.page > 1}">
		<a href="mList?page=${paging.page-1}&limit=${paging.limit}">[이전]</a>
	</c:if>
	&nbsp;
	
	
	
	<!-- [페이지 번호] 페이지에 대한 처리 -->
	<c:forEach var="i" begin="${paging.startpage}" end="${paging.endpage}">
	
	<c:choose>
	
	<c:when test="${paging.page == i}">
	[${i}]
	</c:when>
	
	<c:otherwise>
		<a href="mList?page=${i}&limit=${paging.limit}">${i}</a>
	</c:otherwise>
	
	</c:choose>
	
	</c:forEach>
	
	
	<!-- [다음] 페이지에 대한 처리 -->
	&nbsp;
	<c:if test="${paging.page >= paging.maxpage}">[다음]</c:if>
	<c:if test="${paging.page < paging.maxpage}">
		<a href="mList?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>
	</c:if>
	
	
	</td>
	</tr>
	
	<tr>
		<td colspan="5">
			<!-- 검색기능 -->
			<form action="mSearch?category=${category}"  method="GET">
			
				<!-- 카테고리 -->
				<select name="category">
					<option value="MEMNAME">이름</option>	
					<option value="MEMID">아이디</option>	
					<option value="MEMPHONE">연락처</option>	
				</select>
				<!-- 검색어 -->
				<input type="text" name="keyword" />
				
				<!-- 검색버튼 -->
				<input type="submit" value="검색" />
							
			</form>	
		</td>
	</tr>
		
	</table>
	</div>
	

	
	</div>
	
		<%@ include file="footer.jsp" %>
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
<script>
	function changeLimit(limit){
		location.href="mList?limit="+limit;
	}
</script>

</html>