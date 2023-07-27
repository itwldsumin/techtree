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
<link id="vendorsbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/vendors.bundle.css">
<link id="appbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/app.bundle.css">
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/skins/skin-master.css">
<!-- 공통 start -->
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/stt.css" />
<script src="/resources/js/jquery-1.12.4.min.js"></script>
<script src="/resources/js/common.js"></script>
<!-- //공통 end -->


</head>
<body class="mod-bg-1 mod-nav-link ">
	<%@include file="../../include/adminheader.jsp"%>
	<main id="js-page-content" role="main" class="page-content">
	<form role="form" action="modify" method="get">
		<input type='hidden' name='techId' value="${technologistVO.techId}"
			id="techId"> <input type='hidden' name='page'
			value="${cri.page}"> <input type='hidden' name='perPageNum'
			value="${cri.perPageNum}"> <input type='hidden'
			name='searchType' value="${cri.searchType}">


	</form>


	<div id="wrap">

		<!-- container start -->
		<div id="container">
			<div class="subheader">
				<h1 class="subheader-title">
					<i class='subheader-icon fal fa-edit'></i>과학기술인 상세보기
				</h1>
			</div>

			<div id="contain">

				<div class="profileForm mT80">
					<div class="profileBox">

						<ul>
							<li><p class="picture">
									<c:if test="${!empty filesVO}">
										<c:forEach items="${filesVO}" var="filesVO" varStatus="status">

											<img src="/displayFile?fileName=${filesVO.fileLocation}"
												alt=""
												style="width: 300px; height: 400px; overflow: hidden;">
										</c:forEach>
									</c:if>
									<c:if test="${empty filesVO}">
										<img src="/resources/images/sample.png">

									</c:if>

								</p></li>

							<li>
								<ul class="detailInfo">
									<li><span>과학기술인등록번호(ID)</span>${technologistVO.techId}</li>
									<li><span>비밀번호</span>${technologistVO.techId}</li>
									<li><span>이름</span><strong>${technologistVO.techName}</strong></li>
									<li><span>소속</span>${technologistVO.company}</li>
									<li><span>전문분야</span> ${technologistVO.class3Name}</li>
									<li><span>연락처</span> ${technologistVO.tel}</li>
									<li><span>이메일</span> <a>${technologistVO.email}</a></li>
									<li><span>주소</span> ${technologistVO.address}</li>
									<li><span>최종 학력</span>${technologistVO.education}</li>
									<li><span>한 줄 소개</span>
									 <p class="introduction">${technologistVO.intro}</p></li>
								</ul>
							</li>
						</ul>
						<div class="videoForm2">
							<ul>
								<li>
									<div class="video">
										<p>
											<iframe width="100%" height="180"
												src="${technologistVO.video1}" frameborder="0"
												allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
												title="꿈(어린시절, 지금), 제일 재미 있어 하는 개발)" allowfullscreen></iframe>
										</p>
										<strong class="txtCut" title="꿈(어린시절, 지금), 제일 재미 있어 하는 개발">꿈(어린시절,
											지금), 제일 재미 있어 하는 개발)</strong>
									</div>
								</li>
								<li>
									<div class="video">
										<p>
											<iframe width="100%" height="180"
												src="${technologistVO.video2}" frameborder="0"
												allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
												title="주 개발 및 성과" allowfullscreen></iframe>
										</p>
										<strong class="txtCut" title="주 개발 및 성과">주 개발 및 성과</strong>
									</div>
								</li>
								<li>
									<div class="video">
										<p>
											<iframe width="100%" height="180"
												src="${technologistVO.video3}" frameborder="0"
												allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
												title="협업, 컨설팅 가능분야" allowfullscreen></iframe>
										</p>
										<strong class="txtCut" title="협업, 컨설팅 가능분야">협업, 컨설팅
											가능분야</strong>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- //profileForm end -->

				<!-- scheduleForm start -->
				<div class="scheduleForm mT80">
					<h3>${technologistVO.techName}님의 스케줄표</h3>
					<div class="mT10">${technologistVO.schedule}</div>
				</div>
				<!-- //scheduleForm end -->

				<!-- 주개발 성과 start -->
				<div class="techLayout mT80">
					<h3>주개발 성과</h3>
					<div>${technologistVO.performance}</div>
				</div>
				



			</div>

			<div class="m20 " align="right">
				<button type="button" align="left" class="btn btn-info  waves-effect waves-themed" id="btn_list">목록</button>
				<button type="button" class="btn btn-info  waves-effect waves-themed" id="btn_modify">수정</button>
				<button type="button" id="removeBtn" class="btn  btn-danger waves-effect waves-themed">삭제</button>
			</div>
			<!-- //contain end -->



		</div>
		<!-- //container end -->
	</div>
	</div>
</body>

<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		/* 삭제버튼 */
		$("#removeBtn").on("click", function() {
			formObj.attr("action", "/admin/technologist/remove");
			formObj.attr("method", "post");
			formObj.submit();
		});

		$('#btn_list').on("click", function(evt) {

			self.location = "list";

		});

		/* 수정버튼 */
		$("#btn_modify").on("click", function() {
			formObj.attr("action", "/admin/technologist/modify");
			formObj.attr("method", "get");
			formObj.submit();
		});

	});
</script>

</html>