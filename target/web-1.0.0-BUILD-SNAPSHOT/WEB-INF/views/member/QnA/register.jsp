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
.row{
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
									<li><span>이름</span><strong>${technologistVO.techName}</strong></li>
									<li><span>전문분야</span> ${technologistVO.major}</li>
									<li><span>기술자 번호</span>${technologistVO.techId}</li>
									<li><span>이메일</span> <a
										href="mailto:${technologistVO.email}" title="메일 보내기">${technologistVO.email}</a></li>
									<li><span>소속</span>${technologistVO.company}</li>
									<li><span>최종 학력</span>${technologistVO.education}</li>
									<li><span>한 줄 소개</span>
										<p class="introduction">${technologistVO.intro}</p></li>
								</ul>
							</li>
						</ul>
						<!-- scheduleForm start -->
						<div class="scheduleForm mT80">
							<h3>기술자 스케줄표</h3>
							<div class="mT10">${technologistVO.schedule}</div>
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
				
				<form role="form" name="frm" method="post">
							<input type="hidden" id="memId" name="memId"
								value="${login.memId}">

							<div class="form-group">
								<label class="form-label" for="simpleinput">문의글 제목</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="title" id="title">
							</div>
							<%-- 	<div class="form-group">
								<label class="form-label" for="simpleinput">작성자</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="major" id="major" readonly="readonly"
									value="#{login.memName}">
							</div> --%>

							<div class="form-group">
								<label class="form-label" for="simpleinput">문의글 종류</label>
								<div style="margin-top: 15px;">
									<input type="radio" name="type" id="type" value="컨설팅">컨설팅
									<input type="radio" name="type" id="type" value="협업">협업
								</div>
							</div>


							<div class="form-group">
								<label class="form-label" for="simpleinput">희망 날짜</label> <input
									type="DATE" class="form-control form-control-lg border-info"
									name="hopeDate" id="hopeDate">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">소분류 번호-분야</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="class3No" id="class3No">
							</div>
							<!-- <div class="form-group">
								<label class="form-label" for="simpleinput">가능분야</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="canNo" id="canNo">
							</div> -->

							<div class="form-group">
								<label class="form-label" for="example-textarea">내용</label>
								<textarea class="form-control form-control-lg border-info"
									id="example-textarea" rows="5" name="contents" id="contents"></textarea>
							</div>






						<button type="submit"
								class="btn  btn-primary waves-effect waves-themed"
								id="btn_submit">등록</button>
						</form>
						
						</div>
						</div>

			</div>
			<!-- //contain end -->

		</div>
		<!-- //container end -->



	</div>






</body>


</html>




