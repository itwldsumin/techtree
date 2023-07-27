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
		* 'nav-function-minify'			  - skew nav to maximize space
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
		 *	This script should be placed right after the body tag for fast execution 
		 *	Note: the script is written in pure javascript and does not depend on thirdparty library
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




	<!-- END Page Header -->
	<!-- BEGIN Page Content -->
	<!-- the #js-page-content id is needed for some plugins to initialize -->
	<main id="js-page-content" role="main" class="page-content">
	<ol class="breadcrumb page-breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0);">관리자</a></li>
		<li class="breadcrumb-item">중분류</li>
		<li class="breadcrumb-item active">목록</li>
		<li class="position-absolute pos-top pos-right d-none d-sm-block"><span
			class="js-get-date"></span></li>
	</ol>
	<div class="subheader">
		<h1 class="subheader-title">
			<i class='subheader-icon fal fa-table'> </i> 중분류 목록:

		</h1>
	</div>

	<div class="row" align="center">
		<div class="col-xl-10">
			<div id="panel-1" class="panel">

				<div class="panel-container show">
					<div class="panel-content">

						<!-- datatable start -->
						<div class="row mb-3">


								<div
									class="col-sm-12 col-md-6 d-flex align-items-center justify-content-start">
									<div id="dt-basic-example_filter" class="dataTables_filter">
										<label style="display: flex;"> <input type="button"
											class=" input-group-text d-inline-flex width-3 justify-content-center border-bottom-right-radius-0 border-top-right-radius-0 border-right-0"
											id="searchBtn"> <!-- <i class="fal fa-search"></i>  -->

											<input type="text" name="keyword" 
											placeholder="키워드를 입력해주세요."
											class="form-control border-top-left-radius-0 border-bottom-left-radius-0 ml-0 width-lg shadow-inset-1"
											aria-controls="dt-basic-example"></label>
									</div>
								</div>
							
						</div>


						<table id="dt-basic-example"
							class="table table-bordered table-hover table-striped w-100">
							<thead class="bg-primary-600" style="text-align: center;">
								<tr>
									<th>No</th>
									<th>대분류명</th>
									<th>중분류명</th>
									<th>설명</th>
								</tr>
							</thead>

							<tbody>

								<c:if test="${!empty list2}">
									<c:forEach items="${list2}" var="Class2VO" varStatus="status">
										<tr>
											<td>${status.count}</td>
											<td>${Class2VO.class1Name}</td>
											<td><a href='modify?class2No=${Class2VO.class2No}'>${Class2VO.class2Name}</a></td>
											<td>${Class2VO.class2Contents}</td>

										</tr>
									</c:forEach>

								</c:if>
								<c:if test="${empty list2}">
									<tr>
										<td colspan="4">내역이 없습니다.</td>
									</tr>
								</c:if>

							</tbody>
						</table>
						
						
		
						<div class="dataTables_paginate paging_simple_numbers"
								style="margin: auto;" style="margin: auto;" id="dt-basic-example_paginate">
						<nav style="display: inline-flex;">
										<ul class="pagination">
											<c:if test="${pageMaker.prev}">
												<li class="paginate_button page-item previous disabled"
										id="dt-basic-example_previous"><a class="page-link"
													aria-label="dt-basic-example"
													href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }"><span
														aria-hidden="true">«</span> <span class="fal fa-chevron-left">Previous</span></a></li>
											</c:if>
											<c:forEach begin="${pageMaker.startPage }"
												end="${pageMaker.endPage }" var="idx">
												<li class="paginate_button page-item 
													<c:out value="${pageMaker.cri.page == idx? 'active':''}"/>">
													<a class="page-link"
													href="list${pageMaker.makeSearch(idx)}">${idx}</a>
												</li>
											</c:forEach>
											<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
												<li><a class="page-link"
													href="list${pageMaker.makeSearch(pageMaker.endPage +1) }"><span
														aria-hidden="dt-basic-example">»</span> <span class="paginate_button page-item next">Next</span></a></li>
											</c:if>
										</ul>
									</nav>
						</div>
						
						
						

					<!-- 	<div class="row">
							<div class="dataTables_paginate paging_simple_numbers"
								style="margin: auto;" id="dt-basic-example_paginate">
								<ul class="pagination">
									<li class="paginate_button page-item previous disabled"
										id="dt-basic-example_previous"><a href="#"
										aria-controls="dt-basic-example" data-dt-idx="0" tabindex="0"
										class="page-link"><i class="fal fa-chevron-left"></i></a></li>
									<li class="paginate_button page-item active"><a href="#"
										aria-controls="dt-basic-example" data-dt-idx="1" tabindex="0"
										class="page-link">1</a></li>
									<li class="paginate_button page-item "><a href="#"
										aria-controls="dt-basic-example" data-dt-idx="2" tabindex="0"
										class="page-link">2</a></li>
									<li class="paginate_button page-item "><a href="#"
										aria-controls="dt-basic-example" data-dt-idx="3" tabindex="0"
										class="page-link">3</a></li>
									<li class="paginate_button page-item "><a href="#"
										aria-controls="dt-basic-example" data-dt-idx="4" tabindex="0"
										class="page-link">4</a></li>
									<li class="paginate_button page-item "><a href="#"
										aria-controls="dt-basic-example" data-dt-idx="5" tabindex="0"
										class="page-link">5</a></li>
									<li class="paginate_button page-item "><a href="#"
										aria-controls="dt-basic-example" data-dt-idx="6" tabindex="0"
										class="page-link">6</a></li>
									<li class="paginate_button page-item next"
										id="dt-basic-example_next"><a href="#"
										aria-controls="dt-basic-example" data-dt-idx="7" tabindex="0"
										class="page-link"><i class="fal fa-chevron-right"></i></a></li>
								</ul>
							</div>
						</div> -->

					</div>
				</div>
			</div>
		</div>
	</div>
	</main>

	<%@include file="../../include/footer.jsp"%>
</body>
<!-- END Body -->
</html>
