<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Science and Technology Tree</title>

<link id="vendorsbundle" rel="stylesheet" media="screen, print" href="/resources/dist/css/vendors.bundle.css">
<link id="appbundle" rel="stylesheet" media="screen, print" href="/resources/dist/app.bundle.css">
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print" href="/resources/dist/css/skins/skin-master.css">
<link id="myskin" rel="stylesheet" media="screen, print" href="/resources/css/stt.css">
<link id="myskin" rel="stylesheet" media="screen, print" href="/resources/css/common.css">
</head>
<style>
.header-title{
color:black;
font-weight: bold;
font-size: 20px;
}
</style>

<body>
<%@include file="../../include/header.jsp"%>

   <!-- header end -->
   <div class="row" style="justify-content: center;">
      <div class="col-7">
          <div class="card m20">

            <div class="card-body">
               <h4 class="header-title">협업/컨설팅 분야 설정</h4>
               <p class="text-muted font-13">설정 후에도 수정이 가능합니다.</p>


               <form name="frm" method="post" role="form"
                  onsubmit="return searchCheck();">
                  <input type="hidden" name="techId" id="techId"
                     value="${techLogin.techId}">

                  <div class="form-row">
                     <div class="form-group col-md-12">
                        <label for="inputEmail4" class="col-form-label">소분류명</label><span
                           class="text-danger">*</span>
                        <div class="input-group">
                           <input type="hidden" name="class3No" id="class3No"> <select
                              name="type" id="type">
                              <option value="">분야 선택</option>
                              <option value="컨설팅">컨설팅</option>
                              <option value="협업">협업</option>
                           </select> <input type="text" class="form-control" name="class3Name"
                              id="class3Name" readonly="readonly"
                              placeholder="소분류명를 선택해주세요.">
                           <div class="input-group-append">

                              <button class="btn btn-info" type="button"
                                 onClick="window.open('/technologist/canpart/searchPopup?techId=${techLogin.techId}', 'CLIENT_WINDOW',
                                          'toolbar=yes,menubar=yes,width=700.height=500')"
                                 id="popupBtn">검색</button>

                           </div>
                        </div>
                     </div>
                  </div>

                  <br>
                  <div style="text-align: right;">
                     <button type="submit" class="btn btn-info">등록</button>
                  </div>
               </form>

            </div>
            <!-- end card-body -->
         </div>
         <!-- end card-->
      </div>
      <!-- end col-12 -->
   </div>
</body>





<script>
   $(document).ready(function() {

      $("#detached-check input:radio").click(function() {

         alert("clicked");

      });

      $("input:radio:first").prop("checked", true).trigger("click");

   });

   // 추가
   $("#everyClass3List")
         .click(
               function() {
                  var checkbox = $("input[name=check]:checked");
                  checkbox

                        .each(function() {

                           $(this).parent().parent();
                           var tr = $(this).parent().parent();

                           var td = tr.children();

                           var techId = $(this).val();

                           var class3Name = td.eq(3).text();
                           var row = "<tr>"
                                 + "<td>"
                                 + "<input type=\"checkbox\" class=\"checkBox2\" name=\"check2\" value=\"" + techId + "\"" + ">"
                                 + "</td>" + "<td>" + class3Name
                                 + "</td>" + "</tr>";

                           // 숨긴 값의 체크박스를 false 상태로 바꿈
                           $(this).prop("checked", false);
                           tr.remove();

                           $("#everyClass3List> tbody").append(row);

                           $("#everyClass3List")
                                 .prop("checked", false);

                        })

               });

   // 추가
   $("#everyClass3List2")
         .click(
               function() {
                  var checkbox = $("input[name=check]:checked");
                  checkbox

                        .each(function() {

                           $(this).parent().parent();
                           var tr = $(this).parent().parent();

                           var td = tr.children();

                           var techId = $(this).val();

                           var class3Name = td.eq(3).text();
                           var row = "<tr>"
                                 + "<td>"
                                 + "<input type=\"checkbox\" class=\"checkBox2\" name=\"check2\" value=\"" + techId + "\"" + ">"
                                 + "</td>" + "<td>" + class3Name
                                 + "</td>" + "</tr>";

                           // 숨긴 값의 체크박스를 false 상태로 바꿈
                           $(this).prop("checked", false);
                           tr.remove();

                           $("#everyClass3List2> tbody").append(row);

                           $("#everyClass3List2").prop("checked",
                                 false);

                        })

               });

   // searchSub 팝업창 띄우기
   $("#carPopup")
         .click(
               function() {
                  var url = "searchPopup";
                  var name = "소분류 검색";
                  var option = "width = 700, height = 500, top = 100, left = 200, location = no";
                  //window.open(url, name, option);      
                  window.open(
                        "/technologist/canpart/searchPopup?make_date="
                              + make_date, "_blank",
                        "toolbar=yes,menubar=yes,width=700.height=500");

               }

         );
</script>

<script>
   //항목 명 유효성 검사
   function searchCheck() {
      var type = $("#type").val();
      var class3Name = $("#class3Name").val();

      if (type == "") {
         alert("유형을 선택해주세요.");
         document.getElementById("type").focus();
         return false;
      }
      if (class3Name == "") {
         alert("소분류를 선택해주세요.");
         document.getElementById("class3Name").focus();
         return false;
      }

   }
</script>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
</html>