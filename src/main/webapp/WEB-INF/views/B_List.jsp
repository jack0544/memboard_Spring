<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/favicon.ico">
<link rel="icon" type="image/ico" href="resources/assets/img/favicon.ico">
  <title>
    Board
  </title>
  <style>
  td {
  text-align: center;
  }
  </style>
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

<body class="g-sidenav-show  bg-gray-200">
 <%@ include file="menu.jsp" %>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
     <%@ include file="navbar.jsp" %>
      </div>
    </nav>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
     <div class="row">
        <div class="col-12">
          <div class="card my-4">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                <h6 class="text-white text-capitalize ps-3">게시판 목록</h6>
              </div>
            </div>
            <div class="card-body px-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center justify-content-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7">게시판 제목</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7">게시글 번호</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7">작성자</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7">조회수</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7">수정 & 삭제</th>

                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="list" items="${BoardList}">
                    <tr>
                      <td>
                        <div class="d-flex px-2">
                          <div>
                            <img src="resources/FileUpload/${list.boFileName}" class="avatar avatar-sm rounded-circle me-2" alt="spotify">
                          </div>
                          <div class="my-auto">
                            <a class="mb-0 text-sm" href="bView?boNum=${list.boNum}">${list.boTitle}</a>
                          </div>
                        </div>
                      </td>
                      <td>
                        <p class="text-sm font-weight-bold mb-0">${list.boNum}</p>
                      </td>
                      <td>
                        <span class="text-xs font-weight-bold">${list.boWriter}</span>
                      </td>
                       <td>
                        <span class="text-xs font-weight-bold">${list.boHit}</span>
                      </td>
                      <c:if test="${loginId == list.boWriter}">
                       <td class="align-middle" style="text-align: center;">
                        <a href="bModifyForm?boNum=${list.boNum}" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                          수정
                        </a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="bDelete?boNum=${list.boNum}" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                          삭제
                        </a>
                      </td>
                      </c:if>
                    </tr>
                    
                  </c:forEach>
                  </tbody>
                  <tfoot>
                  <tr>
	
	
	
	<td colspan="5">

	
	<!-- 페이징 처리 -->
	
	<!-- [이전] 페이지에 대한 처리 -->
	<c:if test="${paging.page <= 1}">[이전]</c:if>
	<c:if test="${paging.page > 1}">
		<a href="bList?page=${paging.page-1}&limit=${paging.limit}">[이전]</a>
	</c:if>
	&nbsp;
	
	
	
	<!-- [페이지 번호] 페이지에 대한 처리 -->
	<c:forEach var="i" begin="${paging.startpage}" end="${paging.endpage}">
	
	<c:choose>
	
	<c:when test="${paging.page == i}">
	[${i}]
	</c:when>
	
	<c:otherwise>
		<a href="bList?page=${i}&limit=${paging.limit}">${i}</a>
	</c:otherwise>
	
	</c:choose>
	
	</c:forEach>
	
	
	<!-- [다음] 페이지에 대한 처리 -->
	&nbsp;
	<c:if test="${paging.page >= paging.maxpage}">[다음]</c:if>
	<c:if test="${paging.page < paging.maxpage}">
		<a href="bList?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>
	</c:if>
	
	
	</td>
	</tr>
                  </tfoot>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
     
      <%@ include file="footer.jsp" %>
    </div>
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
<script>
	function changeLimit(limit){
		location.href="bList?limit="+limit;
	}
</script>
</html>