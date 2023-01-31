<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">

  <div class="sidenav-header">
    <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
    <a class="navbar-brand m-0" href="" target="_blank">
      <img src="resources/assets/img/favicon.ico" class="navbar-brand-img h-100" alt="">
      <span class="ms-1 font-weight-bold text-white">Menu</span>
    </a>
  </div>


  <hr class="horizontal light mt-0 mb-2">

  <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
    <ul class="navbar-nav">

    <li class="nav-item mt-3">
      <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">메인 페이지</h6>
    </li>
          
  
 <li class="nav-item">
  <a class="nav-link text-white " href="index">    
      <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
        <i class="material-icons opacity-10">dashboard</i>
      </div>
    
    <span class="nav-link-text ms-1">메인 화면으로</span>
  </a>
</li> 

    <li class="nav-item mt-3">
      <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">게시판 페이지</h6>
    </li>
  
<li class="nav-item">
  <a class="nav-link text-white " href="bList">
    
      <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
        <i class="material-icons opacity-10">table_view</i>
      </div>
    
    <span class="nav-link-text ms-1">게시판 목록</span>
  </a>
</li>

  
<li class="nav-item">
  <a class="nav-link text-white " href="bWriteForm">
    
      <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
        <i class="material-icons opacity-10">format_textdirection_r_to_l</i>
      </div>
    
    <span class="nav-link-text ms-1">게시글 작성하기</span>
  </a>
</li>

  

  
    <li class="nav-item mt-3">
      <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">회원 페이지</h6>
    </li>
<li class="nav-item">
  <a class="nav-link text-white " href="mList">
    
      <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
        <i class="material-icons opacity-10">receipt_long</i>
      </div>
    
    <span class="nav-link-text ms-1">회원목록</span>
  </a>
</li>

<c:if test="${loginId != null }">
<li class="nav-item">
  <a class="nav-link text-white " href="mView?memId=${loginId}">
    
      <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
        <i class="material-icons opacity-10">person</i>
      </div>
    
    <span class="nav-link-text ms-1">내 정보 보기</span>
  </a>
</li>
 <li class="nav-item">
  <a class="nav-link text-white " href="mLogout">
    
      <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
        <i class="material-icons opacity-10">notifications</i>
      </div>
    
    <span class="nav-link-text ms-1">로그아웃</span>
  </a>
</li> 
</c:if>


<c:if test="${loginId == null}">
<li class="nav-item">
  <a class="nav-link text-white " href="mLoginForm">
    
      <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
        <i class="material-icons opacity-10">login</i>
      </div>
    
    <span class="nav-link-text ms-1">로그인</span>
  </a>
</li>

  
<li class="nav-item">
  <a class="nav-link text-white " href="mJoinForm">
    
      <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
        <i class="material-icons opacity-10">assignment</i>
      </div>
    
    <span class="nav-link-text ms-1">회원가입</span>
  </a>
</li>
</c:if>


          

        
      
    </ul>
  </div>
    
  </div>
  
</aside>
</body>
</html>