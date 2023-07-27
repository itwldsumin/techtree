<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>

<!DOCTYPE html>
<!-- 
Template Name:  SmartAdmin Responsive WebApp - Template build with Twitter Bootstrap 4
Version: 4.5.1
Author: Sunnyat A.
Website: http://gootbootstrap.com
Purchase: https://wrapbootstrap.com/theme/smartadmin-responsive-webapp-WB0573SK0?ref=myorange
License: You must have a valid license purchased only from wrapbootstrap.com (link above) in order to legally use this theme for your project.
-->
<html>
<head>
<meta charset="utf-8">
<title>Basic Inputs - Form Stuff - SmartAdmin v4.5.1</title>
<meta name="description" content="Basic Inputs">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
<!-- Call App Mode on ios devices -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<!-- Remove Tap Highlight on Windows Phone IE -->
<meta name="msapplication-tap-highlight" content="no">
<!-- base css -->
<link id="vendorsbundle" rel="stylesheet" media="screen, print"
   href="/resources/dist/css/vendors.bundle.css">
<link id="appbundle" rel="stylesheet" media="screen, print"
   href="/resources/dist/css/app.bundle.css">
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print"
   href="/resources/dist/css/skins/skin-master.css">
<!-- Place favicon.ico in the root directory -->
<link rel="apple-touch-icon" sizes="180x180"
   href="/resources/dist/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
   href="/resources/dist/img/favicon/favicon-32x32.png">
<link rel="mask-icon"
   href="/resources/dist/img/favicon/safari-pinned-tab.svg"
   color="#5bbad5">
</head>
<style>
.card-body {
   -webkit-box-flex: 1;
   -ms-flex: 1 1 auto;
   flex: 1 1 auto;
   padding: 4rem !important; 
   
}
.subheader{
text-align: center;
}
</style>

<body class="mod-bg-1 mod-nav-link ">
   <%@include file="../include/adminheader.jsp"%>




   <!-- END Page Header -->
   <!-- BEGIN Page Content -->
   <!-- the #js-page-content id is needed for some plugins to initialize -->
   <main id="js-page-content" role="main" class="page-content">

   <div class="subheader">
      <h1 class="subheader-title">
         <i class='fa fa-exclamation-circle'> </i> 관리자 대시보드

      </h1>
   </div>

   <div class="container">
      <div class="row">
         <div class="col-12">
            <div class="card widget-inline">
               <div class="card-body p-0">
                  <div class="row no-gutters">
                     <div class="col-sm-12 col-xl-4">
                        <div class="card shadow-none m-0 ">
                           <div class="card-body text-center">
                              <i class="mdi mdi-calendar-text-outline"
                                 style="font-size: 24px;"></i>
                                 
                              <h3>
                                 <span><a href="/admin/member/list">${countMem} </a></span>
                              </h3>
                              <p class="text-muted font-15 mb-0"><i class="fa fa-user"></i> 일반 회원</p>
                           </div>
                        </div>
                     </div>
                     <div class="col-sm-12 col-xl-4">
                        <div class="card shadow-none m-0 ">
                           <div class="card-body text-center">
                              <i class="mdi mdi-calendar-text-outline"
                                 style="font-size: 24px;"></i>
                                 
                              <h3>
                                 <span><a href="/admin/member/list">${countMem2} </a></span>
                              </h3>
                              <p class="text-muted font-15 mb-0"><i class="fa fa-user"></i> 기업 회원</p>
                           </div>
                        </div>
                     </div>

                     <div class="col-sm-12 col-xl-4">
                        <div class="card shadow-none m-0 ">
                           <div class="card-body text-center">
                              <i class="mdi mdi-school" style="font-size: 24px;"></i>
                              
                              <h3>
                                 <span><a href="/admin/technologist/list">${countTech}
                                 </a></span>
                              </h3>
                              <p class="text-muted font-15 mb-0"><i class="fa fa-user"></i> 과학 기술인</p>
                           </div>
                        </div>
                     </div>

                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>








   </main>

   <%@include file="../include/footer.jsp"%>
</body>



<!-- END Body -->
</html>