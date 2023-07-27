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
<body>
	<%@include file="../../include/adminheader.jsp"%>
	<main id="js-page-content" role="main" class="page-content">
	<form role="form" action="list" method="get">
	<input type='hidden' name='memId' value="${memberVO.memId}" id="memId">
		<input type='hidden' name='page' value="${cri.page}"> <input
			type='hidden' name='perPageNum' value="${cri.perPageNum}"> <input
			type='hidden' name='searchType' value="${cri.searchType}"> <input
			type='hidden' name='keyword' value="${cri.keyword}">

	</form>

	<div id="wrap">
		<!-- header start -->
		
		<!-- container start -->
		<div id="container">
			<div class="subheader">
				<h1 class="subheader-title">
					<i class='subheader-icon fal fa-edit'></i> 회원 상세보기
				</h1>
			</div>
			<!-- contain start -->
			<div id="contain">

				<!-- profileForm start -->
				<div class="profileForm mT80">

					<ul class="profileBox">

						<li>
							<ul class="detailInfo">
								<li><span>이름</span><strong>${memberVO.memName}</strong></li>
								<li><span>아이디(ID)</span>${memberVO.memId}</li>
								<li><span>전화 번호</span>${memberVO.tel}</li>
								<li><span>이메일</span>${memberVO.email} </li>
								<li><span>소속</span>${memberVO.company}</li>
								<li><span>주소</span>${memberVO.address}</li>
								<li><span>회원 분류</span> <c:if
										test="${ memberVO.authority == 1 }"> 일반회원</c:if> <c:if
										test="${ memberVO.authority == 2 }"> 기업회원</c:if></li>
							</ul>
						</li>

					</ul>
				</div>
				<!-- //profileForm end -->

				
				<div class="col-12 mT20">
					<div align="right" class="pull-right">


						<button type="submit" class="btn btn-info btn-sm ml-auto ml-sm-0 "
							id="btn_remove">삭제</button>
						<button type="button" class="btn btn-info btn-sm ml-auto ml-sm-0 " id="btn-primary">목록</button>
					</div>
				</div>


			</div>
			<!-- //contain end -->



		</div>
		<!-- //container end -->
	</div>
</main>
</body>
<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		/* 삭제버튼 */
		$("#btn_remove").on("click", function() {
			formObj.attr("action", "/admin/member/remove");
			formObj.attr("method", "get");
			formObj.submit();
		});
		
		/* 목록버튼 */
		$("#btn-primary").on("click", function() {
			self.location = "list";
		});

	});
	
	
</script>


</html>
