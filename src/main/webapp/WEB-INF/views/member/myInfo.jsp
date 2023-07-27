<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>
<html lang="ko">
<head>


<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<meta name="format-detection"
   content="telephone=no, address=no, email=no" />
<meta name="author" content="Science and Technology Tree" />
<meta name="description" content="Science and Technology Tree" />
<title>Science and Technology Tree</title>

<!-- 공통 start -->
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/stt.css" />
<script src="/resources/js/jquery-1.12.4.min.js"></script>
<script src="/resources/js/common.js"></script>
<!-- //공통 end -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.detailInfo>li {
   margin-bottom: 30px;
   color: #747973;
}

.fa-times-circle {
   margin-left: 4px;
   margin-right: 8px;
}
</style>
</head>
<body>
   <%@include file="../include/header.jsp"%>
   <div id="wrap">
      <div id="container">

         <!-- contain start -->
         <div id="contain">

            <!-- profileForm start -->

            <form role="form" method="post">
               <input type='hidden' name='memId' value="${MemberVO.memId}">
            </form>
            <div class="profileForm mT80">


               <!-- profileBox start -->
               <div class="profileBox">


                  <ul>

                     <li style="width: 100%;">
                        <ul class="detailInfo">
                           <li><span>이름</span><strong>${MemberVO.memName}</strong></li>
                           <li><span>회원 구분</span> <c:if
                                 test="${ MemberVO.authority == 1 }"> 일반회원</c:if> <c:if
                                 test="${ MemberVO.authority == 2 }"> 기업회원</c:if></li>
                           <li><span>아이디 </span> ${MemberVO.memId}</li>
                           <li><span>회사</span> ${MemberVO.company}</li>
                           <li><span>전화번호</span>${MemberVO.tel}</li>
                           <li><span>이메일</span> ${MemberVO.email}</li>
                           <li><span>주소</span>${MemberVO.address}</li>
                           <li><span>컨설팅 관심 분야</span> <c:forEach
                                 items="${everyClass3List}" var="InterestPartVO"
                                 varStatus="listStat">
                              ${InterestPartVO.class3Name}<a class="action-icon"
                                    id="btn_submit2"
                                    href="/member/myInfo/remove?interestPartNo=${InterestPartVO.interestPartNo}">
                                    <i class="fa fa-times-circle"></i>
                                 </a>
                              </c:forEach></li>

                           <li><span>협업 관심 분야</span> <c:forEach
                                 items="${everyClass3List2}" var="InterestPartVO"
                                 varStatus="listStat">
                              ${InterestPartVO.class3Name}<a class="action-icon"
                                    id="btn_submit2"
                                    href="/member/myInfo/remove?interestPartNo=${InterestPartVO.interestPartNo}"><i
                                    class="fa fa-times-circle"></i> </a>
                              </c:forEach></li>

                        </ul>

                        <button name="interest" type="button"
                           class="btn-info floatL mT20 btnInquiry"
                           style="font-size: 0.7rem;"
                           onclick="javascript:location.href='/member/interestpart/interestpart'">
                           컨설팅/협업 관심분야 등록</button>

                     </li>
                  </ul>

               </div>
               <!-- //profileBox end -->

            </div>
            <!-- //profileForm end -->




            <p class="clearfix">
               <button class=" btn-info floatR mT30  mB30 btnInquiry"
                  id="btn_pwsubmit">비밀번호 수정</button>


               <button class=" btn-info floatR mT30 mR15 mB30 btnInquiry"
                  id="btn_submit">내정보 수정</button>


            </p>


         </div>
         <!-- //contain end -->

      </div>
      <!-- //container end -->



   </div>






</body>
<script>
   $(document).ready(function() {

      var formObj = $("form[role='form']");

      console.log(formObj);

      /* 수정버튼 */
      $("#btn_submit").on("click", function() {
         formObj.attr("action", "/member/myInfoModify");
         formObj.attr("method", "get");
         formObj.submit();
      });

      /* 비밀번호 수정버튼 */
      $("#btn_pwsubmit").on("click", function() {
         formObj.attr("action", "/member/myPwModify");
         formObj.attr("method", "get");
         formObj.submit();
      });

   });
</script>

<script>
   var result = '${msg}';

   if (result == 'SUCCESS') {
      alert("수정되었습니다.");

   }
</script>
</html>