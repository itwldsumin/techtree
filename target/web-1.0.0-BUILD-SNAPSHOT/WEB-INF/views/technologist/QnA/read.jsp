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
<!-- BEGIN Body -->
<!-- Possible Classes

      * 'header-function-fixed'         - header is in a fixed at all times
      * 'nav-function-fixed'            - left panel is fixed
      * 'nav-function-minify'           - skew nav to maximize space
      * 'nav-function-hidden'           - roll mouse on edge to reveal
      * 'nav-function-top'              - relocate left pane to top
      * 'mod-main-boxed'                - encapsulates to a container
      * 'nav-mobile-push'               - content pushed on menu reveal
      * 'nav-mobile-no-overlay'         - removes mesh on menu reveal
      * 'nav-mobile-slide-out'          - content overlaps menu
      * 'mod-bigger-font'               - content fonts are bigger for readability
      * 'mod-high-contrast'             - 4.5:1 text contrast ratio
      * 'mod-color-blind'               - color vision deficiency
      * 'mod-pace-custom'               - preloader will be inside content
      * 'mod-clean-page-bg'             - adds more whitespace
      * 'mod-hide-nav-icons'            - invisible navigation icons
      * 'mod-disable-animation'         - disables css based animations
      * 'mod-hide-info-card'            - hides info card from left panel
      * 'mod-lean-subheader'            - distinguished page header
      * 'mod-nav-link'                  - clear breakdown of nav links

      >>> more settings are described inside documentation page >>>
   -->
<body class="mod-bg-1 mod-nav-link ">
   <!-- DOC: script to save and load page settings -->
   <script>
      /**
       *   This script should be placed right after the body tag for fast execution 
       *   Note: the script is written in pure javascript and does not depend on thirdparty library
       **/
      'use strict';

      var classHolder = document.getElementsByTagName("BODY")[0],
      /** 
       * Load from localstorage
       **/
      themeSettings = (localStorage.getItem('themeSettings')) ? JSON
            .parse(localStorage.getItem('themeSettings')) : {}, themeURL = themeSettings.themeURL
            || '', themeOptions = themeSettings.themeOptions || '';
      /** 
       * Load theme options
       **/
      if (themeSettings.themeOptions) {
         classHolder.className = themeSettings.themeOptions;
         console.log("%c✔ Theme settings loaded", "color: #148f32");
      } else {
         console
               .log(
                     "%c✔ Heads up! Theme settings is empty or does not exist, loading default settings...",
                     "color: #ed1c24");
      }
      if (themeSettings.themeURL && !document.getElementById('mytheme')) {
         var cssfile = document.createElement('link');
         cssfile.id = 'mytheme';
         cssfile.rel = 'stylesheet';
         cssfile.href = themeURL;
         document.getElementsByTagName('head')[0].appendChild(cssfile);

      } else if (themeSettings.themeURL && document.getElementById('mytheme')) {
         document.getElementById('mytheme').href = themeSettings.themeURL;
      }
      /** 
       * Save to localstorage 
       **/
      var saveSettings = function() {
         themeSettings.themeOptions = String(classHolder.className).split(
               /[^\w-]+/).filter(function(item) {
            return /^(nav|header|footer|mod|display)-/i.test(item);
         }).join(' ');
         if (document.getElementById('mytheme')) {
            themeSettings.themeURL = document.getElementById('mytheme')
                  .getAttribute("href");
         }
         ;
         localStorage
               .setItem('themeSettings', JSON.stringify(themeSettings));
      }
      /** 
       * Reset settings
       **/
      var resetSettings = function() {
         localStorage.setItem("themeSettings", "");
      }
   </script>
   <%@include file="../../include/header.jsp"%>













   <!-- BEGIN Page Content -->
   <!-- the #js-page-content id is needed for some plugins to initialize -->
   <main id="js-page-content" role="main" class="page-content">
   <ol class="breadcrumb page-breadcrumb">
      <li class="breadcrumb-item"><a href="javascript:void(0);">SmartAdmin</a></li>
      <li class="breadcrumb-item">Form Stuff</li>
      <li class="breadcrumb-item active">Basic Inputs</li>
      <li class="position-absolute pos-top pos-right d-none d-sm-block"><span
         class="js-get-date"></span></li>
   </ol>
   <div class="subheader">
      <h1 class="subheader-title">
         <i class='subheader-icon fal fa-edit'></i> 문의글 상세페이지
      </h1>
   </div>

   <div class="row">
      <div class="col-xl-12">
         <div id="panel-1" class="panel">
            <!-- <div class="panel-hdr">
               <h2></h2>

            </div> -->




            <div class="panel-container show">
               <div class="panel-content">

               
                  <form role="form" action="modify" method="post">
                     <input type='hidden' name='qnaNo' value="${qnaVO.qnaNo}" id="qnaNo">
                     <input type='hidden' name='page' value="${cri.page}"> 
                     <input type='hidden' name='perPageNum' value="${cri.perPageNum}">
                     <input type='hidden' name='searchType' value="${cri.searchType}">
                     <input type='hidden' name='keyword' value="${cri.keyword}">
                     <input type='hidden' name='memId'value="${qnaVO.memId}" id="memId">
                     <input type='hidden' name='techId'value="${qnaVO.techId}" id="techId">  
                     
                  </form>


                  <%--    <div class="form-group">
                        <label class="form-label" for="simpleinput">기술인 전공분야</label>
                        ${technologistVO.major}
                     </div> --%>

                  <div class="form-group">
                        <label class="form-label" for="simpleinput">문의글 제목</label> <input
                           type="text" class="form-control form-control-lg border-info"
                           name="title" id="title" value="${qnaVO.title}" readonly="readonly">
                     </div>
                     <%--    <div class="form-group">
                        <label class="form-label" for="simpleinput">작성자</label> <input
                           type="text" class="form-control form-control-lg border-info"
                           name="major" id="major" readonly="readonly"
                           value="#{login.memName}">
                     </div> --%>

                     <div class="form-group">
                        <label class="form-label" for="simpleinput">문의글 종류</label>
                        <div style="margin-top: 15px;">
                           <input
                           type="text" class="form-control form-control-lg border-info"
                           name="type" id="type" value="${qnaVO.type}" readonly="readonly">
                        </div>
                     </div>


                     <div class="form-group">
                        <label class="form-label" for="simpleinput">희망 날짜</label> <input
                           type="DATE" class="form-control form-control-lg border-info"
                           name="hopeDate" id="hopeDate" value="${qnaVO.hopeDate}" readonly="readonly">
                     </div>
                        <div class="form-group">
                        <label class="form-label" for="simpleinput">작성 날짜</label> <input
                           type="DATE" class="form-control form-control-lg border-info"
                           name="hopeDate" id="hopeDate" value="${qnaVO.regDate}" readonly="readonly">
                     </div>
                     <div class="form-group">
                        <label class="form-label" for="simpleinput">소분류 번호-분야</label> <input
                           type="text" class="form-control form-control-lg border-info"
                           name="class3No" id="class3No" value="${qnaVO.class3No}" readonly="readonly">
                     </div>
                     <!-- <div class="form-group">
                        <label class="form-label" for="simpleinput">가능분야</label> <input
                           type="text" class="form-control form-control-lg border-info"
                           name="canNo" id="canNo">
                     </div> -->

                     <div class="form-group">
                        <label class="form-label" for="example-textarea">내용</label>
                        <textarea class="form-control form-control-lg border-info"
                           id="example-textarea" rows="5" name="contents" id="contents" readonly="readonly">${qnaVO.contents}</textarea>
                     </div>




                     
                  


               </div>
            </div>
         </div>
      </div>
   </div>



         <!-- 댓글창 -->
         <div
            class="panel-content border-faded border-left-0 border-right-0 border-bottom-0 bg-faded">
            <input type="hidden" value="${login.techId}" id="newTechId">
         <!--    <form role="form" method="get"> -->

               <textarea rows="3" id="newReplyText"
                  class="form-control rounded-top border-bottom-left-radius-0 border-bottom-right-radius-0 border"
                  placeholder="write a reply..."></textarea>
               <div
                  class="d-flex align-items-center py-2 px-2 bg-white border border-top-0 rounded-bottom">


                  <div
                     class="custom-control custom-checkbox custom-control-inline ml-auto hidden-sm-down">
                     ${qnaVO.techId}</div>
                  <button class="btn btn-primary btn-sm ml-auto ml-sm-0" id="comentAddBtn">Reply</button>
               </div>
               <div class="col-lg-12">
                  <!--  <img class="mr-3 avatar-sm rounded-circle" src="assets/images/users/avatar-3.jpg" alt="Generic placeholder image"> -->
                  <div class="inbox-widget">
                     <h5 class="mt-0">댓글 목록</h5>

                     <div class="card">
                        <ul class="list-group list-group-flush" id="reply">
                        </ul>

                        <!-- <div style="folt"style="tex"></div><i class=" mdi mdi-delete-circle-outline" ></i> -->
                     </div>
                     <div style="text-align: right;"></div>
                  </div>

               </div>
         <!--    </form> -->
         </div>


      </div>
      <!-- //container end -->



   </div>



   </main>
   <!-- this overlay is activated only when mobile menu is triggered -->
   <div class="page-content-overlay" data-action="toggle"
      data-class="mobile-nav-on"></div>
   <!-- END Page Content -->
   <%@include file="../../include/footer.jsp"%>
   <!-- base vendor bundle: 
          DOC: if you remove pace.js from core please note on Internet Explorer some CSS animations may execute before a page is fully loaded, resulting 'jump' animations 
                  + pace.js (recommended)
                  + jquery.js (core)
                  + jquery-ui-cust.js (core)
                  + popper.js (core)
                  + bootstrap.js (core)
                  + slimscroll.js (extension)
                  + app.navigation.js (core)
                  + ba-throttle-debounce.js (core)
                  + waves.js (extension)
                  + smartpanels.js (extension)
                  + src/../jquery-snippets.js (core) -->
   <script src="/resources/dist/js/vendors.bundle.js"></script>
   <script src="/resources/dist/js/app.bundle.js"></script>
   <script type="text/javascript">
      var example_gridsize = $("#example-gridsize");

      $("#gridrange").on(
            "input change",
            function() {
               //do something
               example_gridsize.attr("placeholder", ".col-"
                     + $(this).val());
               example_gridsize.parent().removeClass().addClass(
                     "col-" + $(this).val())
               console.log("col-" + $(this).val());
            });
   </script>

</body>



<script>
   var qnaNo = $("#qnaNo").val(); // QnA 게시글 번호
   var memId = $("#memId").val();
   var techId = $("#techId").val();
   var loginNo = $("#newTechId").val();
   
   $.getJSON("/reply/all/" + qnaNo,
               function(data) {
                  var str = "";
                  $(data)
                        .each(
                              function() {

                                 var strbutton = "";
                                 str += "<li data-replyNo='" + this.replyNo + "'class='list-group-item'>"
                                       + "<div class='inbox-widget'>"
                                       + "<div class='inbox-item'>"
                                       + "<div class='inbox-item-img'>"
                                       + "<img src='/resources/dist/assets/images/users/avatar-7.jpg' class='rounded-circle' alt=''>"
                                       + "</div>"
                                       + "<div class='inbox-item-author'>"
                                       + this.techName
                                       + "<div class='inbox-item-text'>"
                                       + this.replyText
                                       + "<div class='inbox-item-date'>"

                                 if (loginNo == this.techId
                                       || loginNo == techName)//댓글 정보와 로그인 정보 같을 경우 OR 게시글의 주인 인 경우 댓글 삭제 가능
                                 {
                                    strbutton += "<div class='pull-right hidden-phone'>"
                                          + "  <a href='#' onclick='deleteReply("
                                          + this.replyNo
                                          + ")' class='btn btn-sm btn-link text-info font-13'>삭제</a>"
                                          + "</div>";
                                 }

                                 str += strbutton;
                                 str += "</div></li>";

                              });

                  $("#reply").html(str);

               });

   
   //댓글 저장 버튼 클릭 이벤트 submit
   $("#comentAddBtn").on("click", function() {

      
      // 입력 form 선택자
      var loginNo = $("#newTechId");
      var replyTextObj = $("#newReplyText");
      var techId = $("#techId").val();

      var memId = loginNo.val();
      var replyText = replyTextObj.val();

      if (memId == "") { //로그인 정보 없을 경우

         alert("로그인 후 댓글 기능을 사용할 수 있습니다.");
         replyTextObj.val("");
         return;

      }

      alert(memId + replyText);
      
      // 댓글 입력처리 수행
      $.ajax({
         type : "post",
         url : "/reply/",
         headers : {
            "Content-Type" : "application/json",
            "X-HTTP-Method-Override" : "POST"
         },
         dataType : "text",
         data : JSON.stringify({
            qnaNo : qnaNo,
            memId : memId,
            techId : techId,
            replyText : replyText
         }),
         success : function(result) {
            if (result === "SUCCESS") {
               alert("댓글이 등록되었습니다.");
               $("#newReplyText").val(""); //댓글 입력창 공백처리
               getReplies(); //댓글 목록 호출
            }
         }
      });
   });
   
/*    //댓글 저장 버튼 클릭 이벤트 submit
   $(".comentAddBtn").on("click", function() {

      var techIdObj= $("#newReplyWriter"); // 댓글작성자obj
      var replyTextObj = $("#newReplyText"); //댓글내용obj
      var techId= techIdObj.val (); //작성자
      var replyText= replyTextObj val();//댓글내용

      $.ajax({
         type : 'post',
         url : '/replies/',
         headers : {
            "Content-Type" : "application/json",
            "X-HTTP-Method-Override" : "POST"
         },
         dataType : 'text',
         data : JSON.stringify({
            qnaNo: qnaNo,
            techId : techId,
            replyText : replyText 
         }),
         success : function(result) {
            console.log("result: " + result);
            if (result == 'SUCCESS') {
               alert("등록 되었습니다.");
               replyPage = 1;
               getPage("/replies/" + qnaNo + "/" + replyPage);
               memIdObj.val ("");
               replyTextObj ("");
            }
         }
      });
   });
 */

   function deleteReply(replyNo) {

      $.ajax({
         type : 'delete',
         url : '/reply/' + replyNo,
         headers : {
            "Content-Type" : "application/json",
            "X-HTTP-Method-Override" : "DELETE"
         },
         dataType : 'text',
         success : function(result) {
            console.log("result: " + result);
            if (result == 'SUCCESS') {
               alert("삭제 되었습니다.");
               getReplies();
            }
         }
      });

   }

   function getReplies() {

      $.getJSON(
                  "/reply/all/" + qnaNo,
                  function(data) {
                     var str = "";

                     $(data)
                           .each(
                                 function() {

                                    var strbutton = "";
                                    str += "<li data-replyNo='" + this.replyNo + "'class='list-group-item'>"
                                          + "<div class='inbox-widget'>"
                                          + "<div class='inbox-item'>"
                                          + "<div class='inbox-item-img'>"
                                          + "<img src='/resources/dist/assets/images/users/avatar-6.jpg' class='rounded-circle' alt=''>"
                                          + "</div>"
                                          + "<div class='inbox-item-author'>"
                                          + this.memName
                                          + "<div class='inbox-item-text'>"
                                          + this.replyText
                                          + "<div class='inbox-item-date'>"

                                    if (loginNo == this.memId
                                          || loginNo == memName)//댓글 정보와 로그인 정보 같을 경우 OR 게시글의 주인 인 경우 댓글 삭제 가능
                                    {
                                       strbutton += "<div class='pull-right hidden-phone'>"
                                             + "  <a href='#' onclick='deleteReply("
                                             + this.replyNo
                                             + ")' class='btn btn-sm btn-link text-info font-13'>삭제</a>"
                                             + "</div>";
                                    }

                                    str += strbutton;
                                    str += "</div></li>";
                                 });

                     $("#reply").html(str);

                  });

   }
</script>

</html>