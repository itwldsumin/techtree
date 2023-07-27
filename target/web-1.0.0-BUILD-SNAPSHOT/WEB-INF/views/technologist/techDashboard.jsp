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
	<%@include file="../include/header.jsp"%>




	<!-- END Page Header -->
	<!-- BEGIN Page Content -->
	<!-- the #js-page-content id is needed for some plugins to initialize -->
	<main id="js-page-content" role="main" class="page-content">
	<ol class="breadcrumb page-breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0);">관리자</a></li>
		<li class="breadcrumb-item">기술자</li>
		<li class="breadcrumb-item active">목록</li>
		<li class="position-absolute pos-top pos-right d-none d-sm-block"><span
			class="js-get-date"></span></li>
	</ol>
	<div class="subheader">
		<h1 class="subheader-title">
			<i class='subheader-icon fal fa-table'> </i> 기술인

		</h1>
	</div>

	<div class="row" align="center">
		<div class="col-xl-10">
			<div id="panel-1" class="panel">

				<div class="panel-container show">
					<div class="panel-content">

						<!-- datatable start -->
						<div class="row mb-3"></div>

						<button type="button" onclick="location.href='/technologist/QnA/list'"
							class="btn btn-primary">전체 리스트</button>
						<h4>협업리스트</h4>

						<table id="dt-basic-example"
							class="table table-bordered table-hover table-striped w-100">
							<thead class="bg-primary-600" style="text-align: center;">
								<tr>
									<th>No</th>
									<th>제목</th>
									<th>기술인 이름</th>
									<th>작성날짜</th>


								</tr>
							</thead>

							<tbody>


								<c:if test="${!empty tmainConsultList}">
									<c:forEach items="${tmainConsultList}" var="QnAVO"
										varStatus="status">
										<tr>
											<td>${status.count}</td>
											<td><a href='/technologist/QnA/read?qnaNo=${QnAVO.qnaNo}'>${QnAVO.title}</a></td>
											<td>${QnAVO.techName}</td>
											<td>${QnAVO.regDate}</td>

										</tr>
									</c:forEach>

								</c:if>
								<c:if test="${empty tmainConsultList}">
									<tr>
										<td colspan="5" align="center">내역이 없습니다.</td>
									</tr>
								</c:if>

							</tbody>
						</table>


						<h4>컨설팅리스트</h4>
						<table id="dt-basic-example"
							class="table table-bordered table-hover table-striped w-100">
							<thead class="bg-primary-600" style="text-align: center;">
								<tr>
									<th>No</th>
									<th>제목</th>
									<th>기술인 이름</th>
									<th>작성날짜</th>


								</tr>
							</thead>

							<tbody>

								<c:if test="${!empty tmainCooperatList}">
									<c:forEach items="${tmainCooperatList}" var="QnAVO"
										varStatus="status">
										<tr>
											<td>${status.count}</td>
											<td><a href='/technologist/QnA/read?qnaNo=${QnAVO.qnaNo}'>${QnAVO.title}</a></td>
											<td>${QnAVO.techName}</td>
											<td>${QnAVO.regDate}</td>

										</tr>
									</c:forEach>

								</c:if>
								<c:if test="${empty tmainCooperatList}">
									<tr>
										<td colspan="5" align="center">내역이 없습니다.</td>
									</tr>
								</c:if>

							</tbody>
						</table>



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