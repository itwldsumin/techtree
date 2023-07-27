<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!doctype>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<meta charset="utf-8">
<meta name="description" content="Login">
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
<!-- Favicon -->




<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="assets/css/style.css" />

</head>

<body>

<script type="text/javascript">
	//학번 - 중복검사 AJAX.
	function checkMemId() {
		var memId = $("#memId").val();

		if (memId == "") {
			alert("아이디을 입력해주세요.");
			$("#memId").focus();
			return false;
		} else {
			$.ajax({
				url : "checkMemId?memId=" + memId,
				type : "GET",
				success : function(data) {
					console.log(data);
					if (data == false) {
						$("#invalid-feedback").css("display", "inline");
						$("#valid-feedback").css("display", "none");
						$("#registerBtn").prop("disabled", "disabled");
					}
					if (data == true) {
						$("#invalid-feedback").css("display", "none");
						$("#valid-feedback").css("display", "inline");
						$("#registerBtn").prop("disabled", "");
					}
				},
				error : function() {
					console.log("error");
				}
			});
		}

	}

	</script>

   <script type="text/javascript">
   $(function(){
	   $("#alert_success").hide();
	   $("#alert_danger").hide();
	   $("input").keyup(function(){
		   
	   var memPw1=$("#memPw1").val();
	   var memPw2=$("#memPw2").val();
	   if(memPw1 != "" || memPw2 != ""){
		   if(memPw1 == memPw2){
			   $("#alert_success").show();
			   $("#alert_danger").hide();
			   $("#submit").removeAttr("disabled");
		   }else {
			   
			   $("#alert_success").hide();
			   $("#alert_danger").show();
			   $("#submit").attr("disabled", "disabled");
			   
		   }
		 }
	   });
   });
   </script>

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

	<div class="page-wrapper auth">
		<div class="page-inner bg-brand-gradient">
			<div class="page-content-wrapper bg-transparent m-0">
				<div class="height-10 w-100 shadow-lg px-4 bg-brand-gradient">
					<div class="d-flex align-items-center container p-0">
						<div
							class="page-logo width-mobile-auto m-0 align-items-center justify-content-center p-0 bg-transparent bg-img-none shadow-0 height-9 border-0">
							<a href="javascript:void(0)"
								class="page-logo-link press-scale-down d-flex align-items-center">
								<img src="img/logo.png" alt="SmartAdmin WebApp"
								aria-roledescription="logo"> <span
								class="page-logo-text mr-1">Posep</span>
							</a>
						</div>
						<span class="text-white opacity-50 ml-auto mr-2 hidden-sm-down">
							이미 회원이신가요? </span>
						<button type="button" onclick="location.href='login'"
							class="btn btn-primary">로그인</button>
					</div>
				</div>
				<div class="flex-1"
					style="background: url(img/svg/pattern-1.svg) no-repeat center bottom fixed; background-size: cover;">
					<div class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0">
						<div class="row">
							<div class="col-xl-12">
								<h2 class="fs-xxl fw-500 mt-4 text-white text-center">회원 가입

								</h2>
							</div>

							<div class="col-xl-6 ml-auto mr-auto">
								<div class="card p-4 rounded-plus bg-faded">

									<form name="frm" method="post" onsubmit="return validate();">

										<div class="form-group">
											<label class="form-label" for="emailverify">회원 종류</label>
											<div style="margin-top: 15px;">
												<input type="radio" name="authority" id="authority"
													value="1">일반회원 <input type="radio" name="authority"
													id="authority" value="2">기부회원
											</div>
										</div>


										<div class="form-group">
											<label class="form-label" for="emailverify">아이디</label> <input
												type="text" name="memId" id="memId" class="form-control">
												
												<div class="invalid-feedback" id="invalid-feedback"
												style="display: none;">*이미 존재하는 아이디 입니다.</div>
											<div class="valid-feedback" id="valid-feedback"
												style="display: none;">*등록 가능한 아이디입니다.</div>
												
											<button class="btn btn-info" id="checkMemId" type="button"
												onclick="checkMemId()">중복확인</button>


											
										</div>

										<div class="form-group">
											<label class="form-label" for="emailverify">비밀번호</label> <input
												type="password" name="memPw" id="memPw1" class="form-control"
												placeholder="*********" maxlength="12">
												<label class="form-label" for="emailverify">비밀번호 재확인</label> <input
												type="password" name="rememPw" id="memPw2" class="form-control"
												placeholder="*********" maxlength="12">
												
				
											<div class="alert alert_success" id="alert_success">비밀번호가 일치합니다.</div>
											<div class="alert alert_danger" id="alert_danger">비밀번호가 일치하지 않습니다.</div>
										</div>

										<!-- <div class="form-group">
											<label class="form-label" for="emailverify">비밀번호 확인</label> <input
												type="password" name="checkPw" id="checkPw"
												class="form-control" placeholder="*********" maxlength="12">

											<div class="invalid-feedback">No, you missed this one.</div>
											<div class="help-block">Your email will also be your
												username</div>
										</div> -->



										<div class="form-group">
											<label class="form-label" for="emailverify">이름</label> <input
												type="text" name="memName" id="memName" class="form-control"
												placeholder="이름을 적어주세요" maxlength="6">

											<div class="invalid-feedback">No, you missed this one.</div>
											<div class="help-block">Your email will also be your
												username</div>
										</div>


										<div class="form-group">
											<label class="form-label" for="emailverify">회사</label> <input
												type="text" name="company" id="company" class="form-control">

											<div class="invalid-feedback">No, you missed this one.</div>
											<div class="help-block">Your email will also be your
												username</div>
										</div>





										<div class="form-group">
											<label class="form-label" for="emailverify">전화번호</label> <input
												type="text" name="tel" id="tel" class="form-control">

											<div class="invalid-feedback">No, you missed this one.</div>
											<div class="help-block">Your email will also be your
												username</div>
										</div>



										<div class="form-group">
											<label class="form-label" for="emailverify">Email</label> <input
												type="email" name="email" id="email" class="form-control">

											<div class="invalid-feedback">No, you missed this one.</div>
											<div class="help-block">Your email will also be your
												username</div>
										</div>

										<div class="form-group">
											<label class="form-label" for="emailverify">주소 </label> <input
												type="text" id="address" name="address" placeholder="주소"
												class="form-control">

											<div class="invalid-feedback">No, you missed this one.</div>
											<div class="help-block">Your email will also be your
												username</div>
										</div>


										<div class="form-group">
											<label class="form-label" for="emailverify">가입 경로 </label> <input
												type='checkbox' name='how' value='지인' />지인 <input
												type='checkbox' name='how' value='인터넷' />인터넷


										</div>

										<!-- <div class="form-group">
											<label class="form-label" for="emailverify">가입 경로 </label> <input
												type="text" id="how" name="how" placeholder="가입 경로를 적어주세요"
												class="form-control">

										</div> -->

										<div class="form-group">
											<label class="form-label" for="emailverify">목적 </label> <input
												type='checkbox' name='goal' value='컨설팅' /> 컨설팅 <input
												type='checkbox' name='goal' value='협업' /> 협업

										</div>
										<!-- <div class="form-group">
											<label class="form-label" for="emailverify">목적 </label> <input
												type="text" id="goal" name="goal" placeholder="가입목적을 적어주세요"
												class="form-control">

										</div> -->

										<!-- 
										
										<div class="form-group">
											<label class="form-label" for="userpassword">Pick a
												password: <br>Don't reuse your bank password, we didn't
												spend a lot on security for this app.
											</label> <input type="password" id="userpassword"
												class="form-control" placeholder="minimm 8 characters"
												required>
											<div class="invalid-feedback">Sorry, you missed this
												one.</div>
											<div class="help-block">Your password must be 8-20
												characters long, contain letters and numbers, and must not
												contain spaces, special characters, or emoji.</div>
										</div>-->
										<!-- <div class="form-group demo">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input"
													id="terms" required> <label
													class="custom-control-label" for="terms"> I agree
													to terms & conditions</label>
												<div class="invalid-feedback">You must agree before
													proceeding</div>
											</div>
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input"
													id="newsletter"> <label
													class="custom-control-label" for="newsletter">Sign
													up for newsletters (dont worry, we won't send so many)</label>
											</div>
										</div> -->
										<div class="row no-gutters">
											<div class="col-md-4 ml-auto text-right">
												<button type="submit" disabled="disabled" class="btn btn-dark ">회원가입</button>
												
												 
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div
						class="position-absolute pos-bottom pos-left pos-right p-3 text-center text-white">
						2020 © SmartAdmin by&nbsp;<a href='https://www.gotbootstrap.com'
							class='text-white opacity-40 fw-500' title='gotbootstrap.com'
							target='_blank'>gotbootstrap.com</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- END Color profile -->
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
	<script src="js/vendors.bundle.js"></script>
	<script src="js/app.bundle.js"></script>





	
	

</body>
<script type="text/javascript">
	

	function validate() {

		var memId = document.frm.memId;
		var memPw = document.frm.memPw;

		//아이디 입력 유무
		if (memId.value == ''
				|| !(memId.value.length >= 4 && memId.value.length <= 12)) {
			window.alert("아이디를 최소 4 ~ 12 글자 사이로 입력해주세요.");
			document.frm.memId.focus();
			document.getElementById('memId').select();
			return false;
		}
		//비밀번호 입력 유무
		if (memPw.value == '') {
			window.alert("비밀번호를 입력해주세요.");
			document.frm.memPw.focus();
			document.getElementById('memPw').select();
			return false;
		}

		return ture;
	}
	$(document).ready(function() {
		alert('회원가입이 완료되었습니다.')
	});
</script>
</html>