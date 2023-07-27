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

<link id="vendorsbundle" rel="stylesheet" media="screen, print"
   href="/resources/dist/css/vendors.bundle.css">
<link id="appbundle" rel="stylesheet" media="screen, print"
   href="/resources/dist/css/app.bundle.css">
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print"
   href="/resources/dist/css/skins/skin-master.css">


</head>

<style>
.row {
   padding-top: 2rem;
}
</style>
<body>

   <div id="skip-go">
      <p>바로가기</p>
      <ul>
         <li><a href="#contain">본문내용 바로가기</a></li>
      </ul>
   </div>

   <div id="wrap">
      <!-- header start -->
      <div id="header">
         <h1 class="logo">
            <a href="javascript:void(0)" title="Science and Technology Tree">Science
               and Technology <span>Tree</span>
            </a>
         </h1>
         <ul>
            <li><a href="javascript:void(0)" title="내정보">내정보</a></li>
            <li><a href="javascript:void(0)" title="대시보드">대시보드</a></li>
            <li><a href="javascript:void(0)" title="Tech Tree">Tech
                  Tree</a></li>
            <li><a href="javascript:void(0)" title="로그아웃">로그아웃</a></li>
         </ul>
      </div>
      <!-- header end -->

      <!-- container start -->
      <div id="container">

         <!-- contain start -->
         <div id="contain">

            <!-- profileForm start -->


            <div class="profileForm mT80">

               <div class="consultChart">
                  <table>
                     <caption>컨설팅 횟수 및 협업 횟수에 대한 표</caption>
                     <colgroup>
                        <col width="50%" />
                        <col width="50%" />
                     </colgroup>
                     <thead>
                        <tr>
                           <th scope="col">컨설팅 횟수</th>
                           <th scope="col">협업 횟수</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td>5번</td>
                           <td>4번</td>
                        </tr>
                     </tbody>
                  </table>
               </div>

               <!-- profileBox start -->
               <div class="profileBox">


                  <ul>
                     <li>
                        <p class="picture">
                           <img src="/resources/images/sample.png" alt="프로필 사진" />
                        </p>
                     </li>
                     <li>
                        <ul class="detailInfo">
                           <li><span>이름</span><strong>${qnaVO.techName}</strong></li>
                           <%-- <li><span>전문분야</span> ${technologistVO.major}</li>
                           <li><span>기술자 번호</span>${technologistVO.techId}</li> --%>
                           <li><span>이메일</span> <a
                              href="mailto:${qnaVO.email}" title="메일 보내기">${qnaVO.email}</a></li>
                           <%-- <li><span>소속</span>${technologistVO.company}</li>
                           <li><span>최종 학력</span>${technologistVO.education}</li> --%>
                           <li><span>한 줄 소개</span>
                              <p class="introduction">${qnaVO.intro}</p></li>
                        </ul>
                     </li>
                  </ul>
                  <!-- scheduleForm start -->
                  <div class="scheduleForm mT80">
                     <h3>기술자 스케줄표</h3>
                     <div class="mT10">${qnaVO.schedule}</div>
                  </div>
                  <!-- //scheduleForm end -->
               </div>
               <!-- //profileBox end -->

            </div>
            <!-- //profileForm end -->


            <!-- 컨설팅 가능 분야 start -->
            <!-- <div class="techLayout mT80">
               <h3>컨설팅 가능 분야</h3>
               <div>
                  <ul class="list">
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                  </ul>
               </div>
            </div> -->
            <!-- //컨설팅 가능 분야 end -->

            <!-- 협업 가능 분야 start -->
            <!--    <div class="techLayout mT80">
               <h3>협업 가능 분야</h3>
               <div>
                  <ul class="list">
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                  </ul>
               </div>
            </div> -->
            <!-- //협업 가능 분야 end -->

            <div class="row">
               <div class="col-12">

                  <form role="form" action="modify" method="post">
                     <input type='hidden' name='qnaNo' value="${qnaVO.qnaNo}" id="qnaNo">
                     <input type='hidden' name='page' value="${cri.page}"> 
                     <input type='hidden' name='perPageNum' value="${cri.perPageNum}">
                     <input type='hidden' name='searchType' value="${cri.searchType}">
                     <input type='hidden' name='keyword' value="${cri.keyword}">
                     <input type='hidden' name='memId'value="${qnaVO.memId}" id="memId">
                     <input type='hidden' name='techId'value="${qnaVO.techId}" id="techId">  
                     
                  </form>



                  <div class="form-group">
                     <label class="form-label" for="simpleinput">기술인 전공분야</label>
                     ${technologistVO.major}
                  </div>

                  <div class="form-group">
                     <label class="form-label" for="simpleinput">문의글 제목</label> <input
                        type="text" class="form-control form-control-lg border-info"
                        name="title" id="title" value="${qnaVO.title}"
                        readonly="readonly">
                  </div>
                  <%-- <div class="form-group">
                     <label class="form-label" for="simpleinput">작성자</label> <input
                        type="text" class="form-control form-control-lg border-info"
                        name="major" id="major" readonly="readonly"
                        value="#{login.memName}">
                  </div> --%>

                  <div class="form-group">
                     <label class="form-label" for="simpleinput">문의글 종류</label>
                     <div style="margin-top: 15px;">
                        <input type="text"
                           class="form-control form-control-lg border-info" name="type"
                           id="type" value="${qnaVO.type}" readonly="readonly">
                     </div>
                  </div>


                  <div class="form-group">
                     <label class="form-label" for="simpleinput">희망 날짜</label> <input
                        type="DATE" class="form-control form-control-lg border-info"
                        name="hopeDate" id="hopeDate" value="${qnaVO.hopeDate}"
                        readonly="readonly">
                  </div>
                  <div class="form-group">
                     <label class="form-label" for="simpleinput">작성 날짜</label> <input
                        type="DATE" class="form-control form-control-lg border-info"
                        name="hopeDate" id="hopeDate" value="${qnaVO.regDate}"
                        readonly="readonly">
                  </div>
                  <div class="form-group">
                     <label class="form-label" for="simpleinput">소분류 번호-분야</label> <input
                        type="text" class="form-control form-control-lg border-info"
                        name="class3No" id="class3No" value="${qnaVO.class3No}"
                        readonly="readonly">
                  </div>
                  <!-- <div class="form-group">
                        <label class="form-label" for="simpleinput">가능분야</label> <input
                           type="text" class="form-control form-control-lg border-info"
                           name="canNo" id="canNo">
                     </div> -->

                  <div class="form-group">
                     <label class="form-label" for="example-textarea">내용</label>
                     <textarea class="form-control form-control-lg border-info"
                        id="example-textarea" rows="5" name="contents" id="contents"
                        readonly="readonly">${qnaVO.contents}</textarea>
                  </div>




                  <button type="submit"
                     class="btn btn-primary waves-effect waves-themed" id="btn_submit">수정</button>



               </div>
            </div>

         </div>
         <!-- //contain end -->

      


<!-- 댓글창 -->
         <div
            class="panel-content border-faded border-left-0 border-right-0 border-bottom-0 bg-faded">
            <input type="hidden" value="${login.memId}" id="newMemId">
         <!--    <form role="form" method="get"> -->

               <textarea rows="3" id="newReplyText"
                  class="form-control rounded-top border-bottom-left-radius-0 border-bottom-right-radius-0 border"
                  placeholder="write a reply..."></textarea>
               <div
                  class="d-flex align-items-center py-2 px-2 bg-white border border-top-0 rounded-bottom">


                  <div
                     class="custom-control custom-checkbox custom-control-inline ml-auto hidden-sm-down">
                     ${qnaVO.memId}</div>
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








</body>
<script>
   $(document).ready(function() {

      var formObj = $("form[role='form']");

      console.log(formObj);

      /* 수정버튼 */
      $("#btn_submit").on("click", function() {
         formObj.attr("action", "/member/QnA/register");
         formObj.attr("method", "get");
         formObj.submit();
      });

   

   });
</script>



<script>
   var qnaNo = $("#qnaNo").val(); // QnA 게시글 번호
   var memId = $("#memId").val();
   var techId = $("#techId").val();
   var loginNo = $("#newMemId").val();
   
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

   
   //댓글 저장 버튼 클릭 이벤트 submit
   $("#comentAddBtn").on("click", function() {

      
      // 입력 form 선택자
      var loginNo = $("#newMemId");
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

      var memIdObj= $("#newReplyWriter"); // 댓글작성자obj
      var replyTextObj = $("#newReplyText"); //댓글내용obj
      var memId= memIdObj.val (); //작성자
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
            memId : memId,
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




<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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

<link id="vendorsbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/vendors.bundle.css">
<link id="appbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/app.bundle.css">
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/skins/skin-master.css">


</head>

<style>
.row {
	padding-top: 2rem;
}
</style>
<body>

	<div id="skip-go">
		<p>바로가기</p>
		<ul>
			<li><a href="#contain">본문내용 바로가기</a></li>
		</ul>
	</div>

	<div id="wrap">
		<!-- header start -->
		<div id="header">
			<h1 class="logo">
            <a href="/" title="Science and Technology Tree">Science
               and Technology <span>Tree</span>
            </a>
         </h1>
         <ul>
            <li><a href="javascript:void(0)" title="내정보">내정보</a></li>
            <li><a href="member/dashboard" title="대시보드">대시보드</a></li>
            <li><a href="/" title="Tech Tree">Tech
                  Tree</a></li>
            <li><a href="/logout" title="로그아웃">로그아웃</a></li>
         </ul>
		</div>
		<!-- header end -->

		<!-- container start -->
		<div id="container">

			<!-- contain start -->
			<div id="contain">

				<!-- profileForm start -->


				<div class="profileForm mT80">

					<div class="consultChart">
						<table>
							<caption>컨설팅 횟수 및 협업 횟수에 대한 표</caption>
							<colgroup>
								<col width="50%" />
								<col width="50%" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">컨설팅 횟수</th>
									<th scope="col">협업 횟수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5번</td>
									<td>4번</td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- profileBox start -->
					<div class="profileBox">


						<ul>
							<li>
								<p class="picture">
									<img src="/resources/images/sample.png" alt="프로필 사진" />
								</p>
							</li>
							<li>
								<ul class="detailInfo">
									<li><span>이름</span><strong>${qnaVO.techName}</strong></li>
									<li><span>전문분야</span> ${technologistVO.major}</li>
									<li><span>기술자 번호</span>${technologistVO.techId}</li>
									<li><span>이메일</span> <a
										href="mailto:${qnaVO.email}" title="메일 보내기">${qnaVO.email}</a></li>
									<li><span>소속</span>${technologistVO.company}</li>
									<li><span>최종 학력</span>${technologistVO.education}</li>
									<li><span>한 줄 소개</span>
										<p class="introduction">${qnaVO.intro}</p></li>
								</ul>
							</li>
						</ul>
						<!-- scheduleForm start -->
						<div class="scheduleForm mT80">
							<h3>기술자 스케줄표</h3>
							<div class="mT10">${qnaVO.schedule}</div>
						</div>
						<!-- //scheduleForm end -->
					</div>
					<!-- //profileBox end -->

				</div>
				<!-- //profileForm end -->


				<!-- 컨설팅 가능 분야 start -->
				<!-- <div class="techLayout mT80">
               <h3>컨설팅 가능 분야</h3>
               <div>
                  <ul class="list">
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                  </ul>
               </div>
            </div> -->
				<!-- //컨설팅 가능 분야 end -->

				<!-- 협업 가능 분야 start -->
				<!--    <div class="techLayout mT80">
               <h3>협업 가능 분야</h3>
               <div>
                  <ul class="list">
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                     <li>리스트 항목</li>
                  </ul>
               </div>
            </div> -->
				<!-- //협업 가능 분야 end -->

				<div class="row">
					<div class="col-12">

						<form role="form" action="modify" method="post">
							<input type='hidden' name='qnaNo' value="${qnaVO.qnaNo}">


							<input type='hidden' name='page' value="${cri.page}"> <input
								type='hidden' name='perPageNum' value="${cri.perPageNum}">
							<input type='hidden' name='searchType' value="${cri.searchType}">
							<input type='hidden' name='keyword' value="${cri.keyword}">
						</form>

						<div class="form-group">
							<label class="form-label" for="simpleinput">기술인 전공분야</label>
							${technologistVO.major}
						</div>

						<div class="form-group">
							<label class="form-label" for="simpleinput">문의글 제목</label> <input
								type="text" class="form-control form-control-lg border-info"
								name="title" id="title" value="${qnaVO.title}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label class="form-label" for="simpleinput">작성자</label> <input
								type="text" class="form-control form-control-lg border-info"
								name="major" id="major" readonly="readonly"
								value="#{login.memName}">
						</div>

						<div class="form-group">
							<label class="form-label" for="simpleinput">문의글 종류</label>
							<div style="margin-top: 15px;">
								<input type="text"
									class="form-control form-control-lg border-info" name="type"
									id="type" value="${qnaVO.type}" readonly="readonly">
							</div>
						</div>


						<div class="form-group">
							<label class="form-label" for="simpleinput">희망 날짜</label> <input
								type="DATE" class="form-control form-control-lg border-info"
								name="hopeDate" id="hopeDate" value="${qnaVO.hopeDate}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label class="form-label" for="simpleinput">작성 날짜</label> <input
								type="DATE" class="form-control form-control-lg border-info"
								name="hopeDate" id="hopeDate" value="${qnaVO.regDate}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label class="form-label" for="simpleinput">소분류 번호-분야</label> <input
								type="text" class="form-control form-control-lg border-info"
								name="class3No" id="class3No" value="${qnaVO.class3No}"
								readonly="readonly">
						</div>
						<!-- <div class="form-group">
								<label class="form-label" for="simpleinput">가능분야</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="canNo" id="canNo">
							</div> -->

						<div class="form-group">
							<label class="form-label" for="example-textarea">내용</label>
							<textarea class="form-control form-control-lg border-info"
								id="example-textarea" rows="5" name="contents" id="contents"
								readonly="readonly">${qnaVO.contents}</textarea>
						</div>




						<button type="submit"
							class="btn btn-primary waves-effect waves-themed" id="btn_submit">수정</button>



					</div>
				</div>

			</div>
			<!-- //contain end -->

		



	<!-- 댓글창 -->
	<div class="card">
		<div class="card-body">
			<h4 class="mt-0 mb-3">Comments</h4>
			<form role="form" method="get">
				<input type="hidden" value="${login.memId}" id="newMemId">
				<textarea class="form-control form-control-light mb-2"
					placeholder="Write message" id="newReplyText" rows="3"></textarea>
				<div class="text-right">
					<div class="btn-group mb-2">
						<button type="button"
							class="btn btn-link btn-sm text-muted font-18"></button>
					</div>
					<div class="btn-group mb-2 ml-2">
						<!--   <button type="submit" class="btn btn-primary" id="addBtn">Submit</button> -->
						<a class="btn btn-outline-primary btn-rounded comentAddBtn"
							style="font-weight: bold;">댓글 등록</a>

					</div>
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

				<!-- end card-body-->
			</form>
		</div>
		<!-- end card-->
	</div>


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
         formObj.attr("action", "/member/QnA/register");
         formObj.attr("method", "get");
         formObj.submit();
      });

   

   });
</script>


<script>
	var qnaNo = $("#qnaNo").val(); // QnA 게시글 번호
	var loginNo = $("#newMemNo").val();
	var memName = $("#memId").val(); //게시글 쓴 사람 정보 가져오기, QnA 게시글 작성자 번호

	$
			.getJSON(
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

											if (loginNo == this.memId || loginNo == memName)//댓글 정보와 로그인 정보 같을 경우 OR 게시글의 주인 인 경우 댓글 삭제 가능
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
	$(".comentAddBtn").on("click", function() {

		// 입력 form 선택자
		var loginNo = $("#newUserNo");
		var replyTextObj = $("#newReplyText");

		var memId = loginNo.val();
		var replyText = replyTextObj.val();

		if (memId == "") { //로그인 정보 없을 경우

			alert("로그인 후 댓글 기능을 사용할 수 있습니다.");
			replyTextObj.val("");
			return;

		}

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

	function deleteReply(memId) {

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

		$
				.getJSON(
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











</html> --%>