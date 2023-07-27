<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Science and Technology Tree</title>
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

</head>
<script type="text/javascript">
   //코드 중복
   function checkClass3No() {
      var class3No = $("#class3No").val();
      
      if (class3No == "") {
         alert("코드를 입력해주세요.");
         document.getElementById("class3No").focus();
         
         return false;
         
      } else {
         $.ajax({
            url : "checkClass3No?class3No=" + class3No,
            type : "GET",
            success : function(data) {
               console.log(data);
               if (data == false) {
                  $("#invalid-feedback").css("display", "inline");
                  $("#valid-feedback").css("display", "none");
                  $("#btn_submit").prop("disabled", "disabled");
               }
               if (data == true) {
                  $("#invalid-feedback").css("display", "none");
                  $("#valid-feedback").css("display", "inline");
                  $("#btn_submit").prop("disabled", "");
               }
            },
            error : function() {
               console.log("error");
            }
         });
      }

   }
</script>

<body class="mod-bg-1 mod-nav-link ">

   <%@include file="../../include/adminheader.jsp"%>
   <!-- BEGIN Page Content -->
   <!-- the #js-page-content id is needed for some plugins to initialize -->
   <main id="js-page-content" role="main" class="page-content">
   <div class="subheader">
      <h1 class="subheader-title">
         <i class='subheader-icon fal fa-edit'></i> 소분류 등록
      </h1>
   </div>
   <div class="row">
      <div class="col-xl-6">
         <div id="panel-1" class="panel">
            <form role="form" class=panel-container method="post"
               onsubmit="return searchCheck();">

               <div class="panel-container show">
                  <div class="panel-content">


                     <div class="form-group">
                        <label class="form-label" for="simpleinput">대분류명 - 중분류명
                           (중분류코드)</label> <select class="form-control select2" name="class2No"
                           id="class2No">
                           <option value = "" selected disabled  >선택하세요</option>
                           <c:forEach items="${listClass2}" var="Class2VO">

                              <option value="${Class2VO.class2No}">${Class2VO.class1Name}
                                 - ${Class2VO.class2Name} (${Class2VO.class2No})</option>
                           </c:forEach>

                        </select>
                     </div>


                     <div class="form-group mb-3">
                        <label>소분류 코드</label>
                        <div class="input-group">
                           <input type="text" 
                              class="form-control form-control-lg border-info"
                              name="class3No" id="class3No"
                              placeholder="중분류코드 + 두자리 숫자코드를 입력하세요." />

                           <div class="input-group-append">
                              <button class="btn btn-info" id="checkBtn" name="checkBtn" type="button"
                                 onclick="checkClass3No()">중복확인</button>
                           </div>
                        </div>

                        <div class="invalid-feedback" id="invalid-feedback"
                           style="display: none;">*이미 존재하는 코드입니다.</div>
                        <div class="valid-feedback" id="valid-feedback"
                           style="display: none;">*사용 가능한 코드입니다.</div>
                     </div>


                     <div class="form-group">
                        <label class="form-label" for="simpleinput">소분류명</label> <input
                           type="text" 
                           class="form-control form-control-lg border-info"
                           name="class3Name" id="class3Name">
                     </div>





                     <div class="form-group">
                        <label class="form-label" for="example-textarea">상세내용</label>
                        <textarea class="form-control form-control-lg border-info"
                           id="example-textarea" rows="5" name="class3Contents"
                           id="class3Contents"></textarea>
                     </div>



                     <button type="submit" disabled="disabled"
                        class="btn  btn-primary waves-effect waves-themed"
                        id="btn_submit">등록</button>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>
   </main>
   <!-- this overlay is activated only when mobile menu is triggered -->
   <div class="page-content-overlay" data-action="toggle"
      data-class="mobile-nav-on"></div>
   <!-- END Page Content -->
   <%@include file="../../include/footer.jsp"%>

   <script src="/resources/dist/js/vendors.bundle.js"></script>
   <script src="/resources/dist/js/app.bundle.js"></script>

</body>
<script type="text/javascript">
   function searchCheck() {
      var class2No = $("#class2No").val();
      var class3Name = $("#class3Name").val();
      var class3No = $("#class3No").val();

      if (class2No == "") {

         alert("중분류를 입력해주세요.");
         document.getElementById("class2No").focus();
         return false;
      }
      if (class3Name == "") {
         alert("소분류명을 입력해주세요.");
         document.getElementById("class3Name").focus();
         

         return false;
      }
      if (class2No != class3No.substring(0, 4)) {

         alert("중분류와 소분류 코드를 일치시켜주세요.");
         document.getElementById("class3No").focus();
         return false;
      }
      
   }
   
   
   
</script>
</html>