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
  td {
  text-align: center;
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
                <h6 class="text-white text-capitalize ps-3">?????? ??????</h6>
              </div>
            </div>
            <div class="card-body px-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">??????</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">?????????</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">?????????</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">????????????</th>
                      <c:if test="${loginId == 'admin'}">
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">??????&??????</th>
                      </c:if>
                    </tr>
                  </thead>

					<c:forEach var="list" items="${MemberList}">
                  <tbody>
                    <tr>
                      <td>
                        <div class="d-flex px-2 py-1">
                          <div>
                            <img src="resources/profile/${list.memProfileName}" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                          </div>
                          <div class="d-flex flex-column justify-content-center">
                            <a class="mb-0 text-sm" href="mView?memId=${list.memId}">${list.memName}</a>
                            <p class="text-xs text-secondary mb-0">${list.memEmail}</p>
                          </div>
                        </div>
                      </td>
                      <td>
                        <p class="text-xs font-weight-bold mb-0">${list.memId}</p>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <span class="badge badge-sm bg-gradient-success">${list.memPhone}</span>
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-secondary text-xs font-weight-bold">${list.memBirth}</span>
                      </td>
                      
                      <c:if test="${loginId == 'admin'}">
                      <td class="align-middle" style="text-align: center;">
                        <a href="mModiForm?memId=${list.memId}" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                          ??????
                        </a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="mDelete?memId=${list.memId}" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                          ??????
                        </a>
                      </td>
					</c:if>
                    </tr>
                   
                  </tbody>
                        </c:forEach>
                  <tfoot>
                  <tr>
	<td colspan="5" class="limitr">
		<select onchange="changeLimit(this.value)">
<!-- 		<select onchange="location.href="'pList?limit='+this.value"> -->
			<option value=>?????? ?????? ??????</option>
			<option value="5">5??????</option>
			<option value="10">10??????</option>
			<option value="20">20??????</option>
		</select>
	
	</td>
	</tr>
	
	<tr>
	<td colspan="5">

	
	<!-- ????????? ?????? -->
	
	<!-- [??????] ???????????? ?????? ?????? -->
	<c:if test="${paging.page <= 1}">[??????]</c:if>
	<c:if test="${paging.page > 1}">
		<a href="mList?page=${paging.page-1}&limit=${paging.limit}">[??????]</a>
	</c:if>
	&nbsp;
	
	
	
	<!-- [????????? ??????] ???????????? ?????? ?????? -->
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
	
	
	<!-- [??????] ???????????? ?????? ?????? -->
	&nbsp;
	<c:if test="${paging.page >= paging.maxpage}">[??????]</c:if>
	<c:if test="${paging.page < paging.maxpage}">
		<a href="mList?page=${paging.page+1}&limit=${paging.limit}">[??????]</a>
	</c:if>
	
	
	</td>
	</tr>
	
	<tr>
		<td colspan="4">
			<!-- ???????????? -->
			<form action="mSearch?category=${category}"  method="GET">
			
				<!-- ???????????? -->
				<select name="category">
					<option value="MEMNAME">??????</option>	
					<option value="MEMID">?????????</option>	
					<option value="MEMPHONE">?????????</option>	
				</select>
				<!-- ????????? -->
				<input type="text" name="keyword" />
				
				<!-- ???????????? -->
				<input type="submit" value="??????" />
							
			</form>	
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
		location.href="mList?limit="+limit;
	}
</script>
</html>