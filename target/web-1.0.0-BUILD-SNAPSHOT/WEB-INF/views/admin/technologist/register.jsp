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
			<i class='subheader-icon fal fa-edit'></i> 기술인 등록
		</h1>
	</div>
	<div class="row">
		<div class="col-xl-6">
			<div id="panel-1" class="panel">
				<!-- <div class="panel-hdr">
					<h2></h2>

				</div> -->
				<form role="form" name="frm" method="post"
					onsubmit="return validate();">
					<input type="hidden" id="class3VO" name="class3VO" />
					<div class="panel-container show">
						<div class="panel-content">
							<!--  <div class="panel-tag"> 대분류 등록
                                            </div> -->



							<div class="form-group">
								<label class="form-label" for="simpleinput">기술인 전공분야</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="major" id="major">
							</div>

							<div class="form-group">
								<label class="form-label" for="simpleinput">기술인 번호</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="techId" id="techId">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">기술인 비밀번호</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="techPW" id="techPW">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">기술인 이름</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="techName" id="techName">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">소속</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="company" id="company">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">연락처</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="tel" id="tel">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">이메일</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="email" id="email">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">주소</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="address" id="address">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">최종학력</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="education" id="education">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">개발영상1</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="video1" id="video1">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">개발영상2</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="video2" id="video2">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">개발영상3</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="video3" id="video3">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">스케줄 링크</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="performance" id="performance">
							</div>


							<div class="form-group">
								<label class="form-label" for="simpleinput">소분류</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="class3No" id="class3No">
							</div>

							<div class="form-group">
								<label class="form-label" for="example-textarea">소개글 한 줄</label>
								<textarea class="form-control form-control-lg border-info"
									id="example-textarea" rows="5" name="intro" id="intro"></textarea>
							</div>



							<button type="submit"
								class="btn  btn-primary waves-effect waves-themed"
								id="btn_submit">등록</button>

						</div>
					</div>






				</form>



				<!-- message me-->
				<div id="msg-02" class="d-flex flex-column border-faded border-top-0 border-left-0 border-right-0 py-3 px-3 px-sm-4 px-lg-0 mr-0 mr-lg-5 flex-shrink-0" style="pointer-events: none;">
				<!-- style="pointer-events: none;"  마우스 오버 효과 없앰-->
					<div class="d-flex align-items-center flex-row" >
						<div class="ml-0 mr-3 mx-lg-3">
							<img src="/resources/dist/img/logo.png"
								class="profile-image profile-image-md rounded-circle"
								alt="Dr. Codex Lantern">
						</div>
						<div class="fw-500 flex-1 d-flex flex-column cursor-pointer"
							data-toggle="collapse" data-target="#msg-02 > .js-collapse">
							<div class="fs-lg">
								이름
								<!-- <span class="fs-nano fw-400 ml-2">me</span> -->
							</div>
							<div class="fs-nano">댓글 내용</div>
						</div>
						<div class="color-fusion-200 fs-sm">
							7:00 AM <span class="hidden-sm-down">(6 hours ago)</span>
						</div>
						<div class="collapsed-reveal">
							<a href="javascript:void(0);"
								class="btn btn-icon ml-1 fs-lg rounded-circle"> <i
								class="fal fa-reply"></i>
							</a>
						</div>
					</div>
			
				</div>
				<!-- end message me-->
				<!-- message -->
				<div id="msg-03"
					class="d-flex flex-column border-faded border-top-0 border-left-0 border-right-0 py-3 px-3 px-sm-4 px-lg-0 mr-0 mr-lg-5 flex-shrink-0">
					<div class="d-flex align-items-center flex-row">
						<div class="ml-0 mr-3 mx-lg-3 width-2">
							<img src="img/demo/avatars/avatar-c.png"
								class="profile-image profile-image-md rounded-circle"
								alt="Melissa Ayre">
						</div>
						<div class="fw-500 flex-1 d-flex flex-column cursor-pointer"
							data-toggle="collapse" data-target="#msg-03 > .js-collapse">
							<div class="fs-lg">
								Melissa Ayre <span class="fs-nano fw-400 ml-2">notifications@github.com</span>
							</div>
							<div class="fs-nano">to drlantern@gotbootstrap.com</div>
						</div>
						<div class="color-fusion-200 fs-sm">
							6:00 AM <span class="hidden-sm-down">(5 hours ago)</span>
						</div>
						<div class="collapsed-reveal">
							<a href="javascript:void(0);"
								class="btn btn-icon ml-1 fs-lg rounded-circle"> <i
								class="fal fa-reply"></i>
							</a>
						</div>
					</div>
					<div id="js-msg-1" class="js-collapse">
						<div class="pl-lg-5 ml-lg-5 pt-3 pb-4 ">We've taken customer
							feedback on board and are pleased to announce that the the
							industry's most recommended and secure option for Two-Factor
							Authentication (2FA) is now available to use on our site. So, if
							you've tried our previous 2FA methods and have not been
							convinced, why not try our new Time-Based One-Time Password
							(TOTP)? It's super easy to use, and it works with many
							third-party 2FA apps you might already have on your phone. We're
							positive you'll love the new improved experience.</div>
					</div>
				</div>
				<!-- end message -->


				<!-- BEGIN msgr -->
				<div class="msgr d-flex h-100 flex-column bg-white">
					<!-- BEGIN custom-scroll -->
					<div class="custom-scroll flex-1 h-100">
						<div id="chat_container" class="w-100 p-4">
							<!-- start .chat-segment -->
							<div class="chat-segment">
								<div class="time-stamp text-center mb-2 fw-400">Jun 19</div>
							</div>
							<!--  end .chat-segment -->
							<!-- start .chat-segment -->
							<div class="chat-segment chat-segment-sent">
								<div class="chat-message">
									<p>Hey Tracey, did you get my files?</p>
								</div>
								<div class="text-right fw-300 text-muted mt-1 fs-xs">3:00
									pm</div>
							</div>
							<!--  end .chat-segment -->
							<!-- start .chat-segment -->
							<div class="chat-segment chat-segment-get">
								<div class="chat-message">
									<p>Hi</p>
									<p>Sorry going through a busy time in office. Yes I
										analyzed the solution.</p>
									<p>It will require some resource, which I could not manage.
									</p>
								</div>
								<div class="fw-300 text-muted mt-1 fs-xs">3:24 pm</div>
							</div>
							<!--  end .chat-segment -->
							<!-- start .chat-segment -->
							<div class="chat-segment chat-segment-sent chat-start">
								<div class="chat-message">
									<p>Okay</p>
								</div>
							</div>
							<!--  end .chat-segment -->
							<!-- start .chat-segment -->
							<div class="chat-segment chat-segment-sent chat-end">
								<div class="chat-message">
									<p>Sending you some dough today, you can allocate the
										resources to this project.</p>
								</div>
								<div class="text-right fw-300 text-muted mt-1 fs-xs">3:26
									pm</div>
							</div>
							<!--  end .chat-segment -->
							<!-- start .chat-segment -->
							<div class="chat-segment chat-segment-get chat-start">
								<div class="chat-message">
									<p>Perfect. Thanks a lot!</p>
								</div>
							</div>
							<!--  end .chat-segment -->
							<!-- start .chat-segment -->
							<div class="chat-segment chat-segment-get">
								<div class="chat-message">
									<p>I will have them ready by tonight.</p>
								</div>
							</div>
							<!--  end .chat-segment -->
							<!-- start .chat-segment -->
							<div class="chat-segment chat-segment-get chat-end">
								<div class="chat-message">
									<p>Cheers</p>
								</div>
							</div>
							<!--  end .chat-segment -->
							<!-- start .chat-segment for timestamp -->
							<div class="chat-segment">
								<div class="time-stamp text-center mb-2 fw-400">Jun 20</div>
							</div>
							<!--  end .chat-segment for timestamp -->
						</div>
					</div>
					<!-- END custom-scroll  -->
					<!-- inbox message -->
					<div
						class="flex-wrap align-items-center flex-grow-1 position-relative bg-white">
						<div
							class=" position-absolute pos-top pos-bottom w-100 custom-scroll">
							<div class="d-flex h-100 flex-column">
								<!-- inbox title -->
								<div
									class="d-flex align-items-center pl-2 pr-3 py-3 pl-sm-3 pr-sm-4 py-sm-4 px-lg-5 py-lg-3 flex-shrink-0">
									<!-- button for mobile -->
									<a href="javascript:void(0);"
										class="pl-3 pr-3 py-2 d-flex d-lg-none align-items-center justify-content-center mr-2 btn"
										data-action="toggle" data-class="slide-on-mobile-left-show"
										data-target="#js-inbox-menu"> <i
										class="fal fa-ellipsis-v h1 mb-0 "></i>
									</a>
									<!-- end button for mobile -->
									<h1 class="subheader-title mb-0 ml-2 ml-lg-5">Re: New
										security codes</h1>
									<span class="badge badge-primary ml-2 hidden-sm-down">INBOX</span>
									<div class="d-flex position-relative ml-auto">
										<a href="#" title="starred" class="btn btn-icon ml-1 fs-lg">
											<i class="fas fa-star color-warning-500"></i>
										</a> <a href="javascript:void(0);" class="btn btn-icon ml-1 fs-lg"
											data-toggle="collapse" data-target=".js-collapse"> <i
											class="fas fa-arrows-v"></i>
										</a> <a href="javascript:void(0);"
											class="btn btn-icon ml-1 fs-lg hidden-lg-down"> <i
											class="fas fa-print"></i>
										</a>
									</div>
								</div>
								<!-- end inbox title -->
								<!-- message -->
								<div id="msg-01"
									class="d-flex flex-column border-faded border-top-0 border-left-0 border-right-0 py-3 px-3 px-sm-4 px-lg-0 mr-0 mr-lg-5 flex-shrink-0">
									<div class="d-flex align-items-center flex-row">
										<div class="ml-0 mr-3 mx-lg-3">
											<img src="/resources/dist/img/demo/avatars/avatar-c.png"
												class="profile-image profile-image-md rounded-circle"
												alt="Melissa Ayre">
										</div>
										<div class="fw-500 flex-1 d-flex flex-column cursor-pointer"
											data-toggle="collapse" data-target="#msg-01 > .js-collapse">
											<div class="fs-lg">
												Melissa Ayre <span class="fs-nano fw-400 ml-2">notifications@github.com</span>
											</div>
											<div class="fs-nano">to drlantern@gotbootstrap.com</div>
										</div>
										<div class="color-fusion-200 fs-sm">
											1:00 AM <span class="hidden-sm-down">(12 hours ago)</span>
										</div>
										<div class="collapsed-reveal">
											<a href="javascript:void(0);"
												class="btn btn-icon ml-1 fs-lg rounded-circle"> <i
												class="fal fa-reply"></i>
											</a>
										</div>
									</div>
									<div class="collapse js-collapse">
										<div class="pl-lg-5 ml-lg-5 pt-3 pb-4">We've taken
											customer feedback on board and are pleased to announce that
											the the industry's most recommended and secure option for
											Two-Factor Authentication (2FA) is now available to use on
											our site. So, if you've tried our previous 2FA methods and
											have not been convinced, why not try our new Time-Based
											One-Time Password (TOTP)? It's super easy to use, and it
											works with many third-party 2FA apps you might already have
											on your phone. We're positive you'll love the new improved
											experience.</div>
									</div>
								</div>
								<!-- end message -->

								<!-- message -->
								<div id="msg-03"
									class="d-flex flex-column border-faded border-top-0 border-left-0 border-right-0 py-3 px-3 px-sm-4 px-lg-0 mr-0 mr-lg-5 flex-shrink-0">
									<div class="d-flex align-items-center flex-row">
										<div class="ml-0 mr-3 mx-lg-3 width-2">
											<img src="img/demo/avatars/avatar-c.png"
												class="profile-image profile-image-md rounded-circle"
												alt="Melissa Ayre">
										</div>
										<div class="fw-500 flex-1 d-flex flex-column cursor-pointer"
											data-toggle="collapse" data-target="#msg-03 > .js-collapse">
											<div class="fs-lg">
												Melissa Ayre <span class="fs-nano fw-400 ml-2">notifications@github.com</span>
											</div>
											<div class="fs-nano">to drlantern@gotbootstrap.com</div>
										</div>
										<div class="color-fusion-200 fs-sm">
											6:00 AM <span class="hidden-sm-down">(5 hours ago)</span>
										</div>
										<div class="collapsed-reveal">
											<a href="javascript:void(0);"
												class="btn btn-icon ml-1 fs-lg rounded-circle"> <i
												class="fal fa-reply"></i>
											</a>
										</div>
									</div>
									<div id="js-msg-1" class="js-collapse">
										<div class="pl-lg-5 ml-lg-5 pt-3 pb-4 ">We've taken
											customer feedback on board and are pleased to announce that
											the the industry's most recommended and secure option for
											Two-Factor Authentication (2FA) is now available to use on
											our site. So, if you've tried our previous 2FA methods and
											have not been convinced, why not try our new Time-Based
											One-Time Password (TOTP)? It's super easy to use, and it
											works with many third-party 2FA apps you might already have
											on your phone. We're positive you'll love the new improved
											experience.</div>
									</div>
								</div>
								<!-- end message -->
							</div>
						</div>
					</div>

					<main id="js-page-content" role="main" class="page-content">
					<!-- Page heading removed for composed layout -->
					<div
						class="alert alert-info m-0 p-0 border-left-0 border-right-0 rounded-0 px-5 py-2">
						<div class="container">
							<div class="px-3 d-flex pr-5">
								<strong>SmartAdmin Support Forum is a public support
									forum hosted on <a href="https://support.gotbootstrap.com"
									target="_blank">https://support.gotbootstrap.com</a>
								</strong>
								<div class="ml-auto">
									<a href="javascript:void(0);"
										class="btn btn-danger btn-xs btn-icon rounded-circle"
										data-dismiss="alert" aria-label="Close"> <span
										aria-hidden="true"><i class="fal fa-times"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="d-flex flex-grow-1 p-0 iframe-wrapper">
						<iframe src="https://support.gotbootstrap.com/" id="iframe"
							class="w-100 border-0" allowtransparency="true"></iframe>
					</div>
					</main>
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

			return ture;
		}
		/* 	$(document).ready(function(){
			alert('회원가입이 완료되었습니다.')
			})); */
	</script>
</body>
<!-- END Body -->
</html>
