<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<i class='subheader-icon fal fa-edit'></i> QnA 수정
		</h1>
	</div>
	<div class="row">
		<div class="col-xl-6">
			<div id="panel-1" class="panel">
				<!-- <div class="panel-hdr">
					<h2></h2>

				</div> -->
				<!-- <form role="form" name="frm" method="post"
					onsubmit="return validate();"> -->
					
					
					<div class="panel-container show">
						<div class="panel-content">


							<%-- <div class="form-group">
								<label class="form-label" for="simpleinput">기술인 번호</label>
								<div>${technologistVO.techId}</div>
							</div>

							<div class="form-group">
								<label class="form-label" for="simpleinput">기술인 이름</label>

								<div>${technologistVO.techName}</div>
								
							</div>

							<div class="form-group">
								<label class="form-label" for="simpleinput">이메일</label>
								<div>${technologistVO.email}</div>
								
							</div>


							${technologistVO.schedule}

		 --%>
							<hr>
							<hr>





				
						<%-- 	<div class="form-group">
								<label class="form-label" for="simpleinput">작성자</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="major" id="major" readonly="readonly"
									value="#{login.memName}">
							</div> --%>
							
							<form role="form" method="post">
							
							<input type='hidden' name='qnaNo' value="${qnaVO.qnaNo}">
							

							<div class="form-group">
								<label class="form-label" for="simpleinput">문의글 제목</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="title" id="title" value="${qnaVO.title}">
							</div>
							
							<div class="form-group">
											<label class="form-label" for="emailverify">회원 종류</label>
											<div style="margin-top: 15px;">
									<!-- <input type="radio" name="type" id="type" value="컨설팅">컨설팅
											<input type="radio" name="type" id="type" value="협업">협업 -->

									<input
									type="text" class="form-control form-control-lg border-info"
									name="type" id="type" value="${qnaVO.type}">
											</div>
										</div>
							
								<div class="form-group">
								<label class="form-label" for="simpleinput">작성 날짜</label> <input
									type="DATE" class="form-control form-control-lg border-info"
									name="hopeDate" id="hopeDate" value="${qnaVO.regDate}">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">소분류 번호-분야</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="class3No" id="class3No" value="${qnaVO.class3No}" >
							</div>

							
							<div class="form-group">
								<label class="form-label" for="example-textarea">내용</label>
								<textarea class="form-control form-control-lg border-info"
									id="example-textarea" rows="5" name="contents" id="contents" >${qnaVO.contents}</textarea>
							</div>


			



							<button type="submit"
								class="btn  btn-primary waves-effect waves-themed"
								id="btn_submit">수정</button>
								
								<button type="button" id="removeBtn1"
								class="btn  btn-primary waves-effect waves-themed">삭제</button>
								</form>


						</div>
					</div>


				
			</div>
		</div>




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
		
		function validate() {

			var memId = document.frm.major;
			var memPw = document.frm.techId;
			var memId = document.frm.techPW;
			var memPw = document.frm.techName;

			
			//기술인 분야  입력 유무
			if (major.value == '') {
			window.alert("기술인 전공분야를 입력해주세요.");
			document.frm.major.focus();
			document.getElementById('major').select();
			return false;
		}
			
			//기술인번호 입력 유무
				if (techId.value == '') {
				window.alert("기술인 번호를 입력해주세요.");
				document.frm.techId.focus();
				document.getElementById('techId').select();
				return false;
			}
			//비밀번호 입력 유무
			if (techPW.value == '') {
				window.alert("비밀번호를 입력해주세요.");
				document.frm.techPW.focus();
				document.getElementById('techPW').select();
				return false;
			}
			//기술자이름 입력 유무
			if (techName.value == '') {
				window.alert("기술자이름을 입력해주세요.");
				document.frm.techName.focus();
				document.getElementById('techName').select();
				return false;
			}
			
			
			return ture;}
		/* $(document).ready(function(){
		alert('.')
		})); */
	</script>
	
	<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		/* 삭제버튼 */
		$("#removeBtn1").on("click", function() {
			formObj.attr("action", "/member/QnA/remove");
			formObj.submit();
		});

		$("#btn_submit").on("click", function() {
			formObj.attr("action", "/member/QnA/modify");
			formObj.attr("method", "post");
			formObj.submit();
		});

	});
</script>
</body>
<!-- END Body -->
</html>
