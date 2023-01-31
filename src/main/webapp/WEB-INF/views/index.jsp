<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
<!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/asset/css/styles.css" rel="stylesheet" />  

<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/favicon.ico">
<link rel="icon" type="image/ico" href="resources/assets/img/favicon.ico">

<title> 
   Board
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


  <body class="g-sidenav-show  bg-gray-100">
    

    <%@ include file="menu.jsp" %>

    
      

      <main class="main-content border-radius-lg ">
        <!-- Navbar -->

<nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
  <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
      
      <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
        <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
        <li class="breadcrumb-item text-sm text-dark active" aria-current="page">index</li>
      </ol>
      <h6 class="font-weight-bolder mb-0">index</h6>
      
    </nav>
    <%@ include file="navbar.jsp" %>
  </div>
</nav>

<!-- End Navbar -->


        


            <div class="container-fluid py-4">
             <!-- Header - set the background image for the header in the line below-->
        <header class="py-5 bg-image-full" style="background-image: url('https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbgV7ma%2FbtqACPJ6BWu%2FhEYxW2SwvlykokkUXp3ns0%2Fimg.jpg')">
            <div class="text-center my-5">
                <img class="img-fluid rounded-circle mb-4" src="resources/asset/11.jpg" alt="..." />
                <h1 class="text-white fs-3 fw-bolder">회원제 게시판</h1>
            </div>
        </header>
       

     <%@ include file="footer.jsp" %>

                

            </div>

         
       </main>
    

      
          
<!--   Core JS Files   -->
<script src="resources/assets/js/core/popper.min.js" ></script>
<script src="resources/assets/js/core/bootstrap.min.js" ></script>
<script src="resources/assets/js/plugins/perfect-scrollbar.min.js" ></script>
<script src="resources/assets/js/plugins/smooth-scrollbar.min.js" ></script>

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


<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc --><script src="resources/assets/js/material-dashboard.min.js?v=3.0.4"></script>
  <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/asset/js/scripts.js"></script>
  </body>

</html>
