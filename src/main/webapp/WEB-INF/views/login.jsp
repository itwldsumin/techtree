<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<!doctype html>
<html lang="">

<head>

<title>로그인</title>

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

</head>
<style>
.logo1 h1 {
	font-family: 'Noto Sans KR B';
	font-size: 2.2rem /*20px*/;
	color: #1dc3f3;
	text-align: center;
	padding-bottom: 20px;
}

.logo1 a {
	color: #1dc3f3;
}

#wrqp {
	width: 0
}
span{
font-weight: bolder;
padding-left: 5px
}
</style>



<%
    // 로그인 유지작업 
    Cookie[] cookies = request.getCookies();
    if(cookies != null ){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("memiD")){
                /* 실행흐름이 서버에 있을 경우 서버코드로써 강제이동
                       서버에서 클라이언트()에게 특정페이지로 이동하는 정보만 응답으로 준다.
                   java코드로 페이지 이동 -> sendRedirect("url");
                */
                response.sendRedirect("sessionMain.jsp");
            }
        }
    }
%>




<body>


	<div id="wrap" class="bg-info" style="width: auto">
		<!-- <div id="wrap" > -->
		<!-- header start -->

		<div id="header">
			<div class="logo1">
				<h1>
					<!-- <a href="/" title="Science and Technology Tree"> -->
					<a href="/" title="Science and Technology Tree" class="text-white">
					Science and Technology Tree
					</a>
				</h1>

			</div>
		</div>
	</div>
	<div class="page-wrapper auth">
		<div class="page-inner ">
			<div class="page-content-wrapper  m-0">


				<div class="flex-1 " >
					<div class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0">
						<div class="row">

							<div class="col-xl-12">

								<div class="col-xl-6 ml-auto mr-auto">
									<div class="logo1">
										<h1>
											<a href="#" title="Science and Technology Tree"
												style="pointer-events: none;">Login </a>
										</h1>
									</div>

									<div class="card p-4 rounded-plus bg-faded">

										<form method="post" id="myForm">
											<div class="form-group">
											<div class="row">
												<div class="col-6 text-right">
													<input type="radio" name="auth" id="auth" value="1"
														checked="checked"><span>일반회원 </span>
														</div>
														<div class="col-6">
														<input type="radio"
														name="auth" id="auth" value="2"><span>과학기술인</span>
												</div>
												</div>
											</div>
											<div class="form-group">
												<label class="form-label" for="username">아이디</label> <input
													type="text" name="memId" id="memId"
													class="form-control form-control-lg"
													placeholder="아이디 또는 기술인 번호 " required>

											</div>
											<div class="form-group">
												<label class="form-label" for="password">비밀번호</label> <input
													type="password" name="memPw" id="memPw"
													class="form-control form-control-lg" placeholder="password"
													required>


											</div>
											
											<div class="row no-gutters">
								
												<div class="col-lg-12 pl-lg-1 my-2">
													<button type="submit" id='js-login-btn'
														class="btn btn-info btn-block btn-lg">로그인</button>
														<br>
														<span>회원이 아니신가요?<a href="/signup" class="text-info">회원가입 </a></span>
												</div>
												
												
												
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="/resources/dist/js/vendors.bundle.js"></script>
	<script>
   var result = '${msg}';

   if (result == 'nologin') {
      alert(" 회원 정보와 일치하지 않습니다.");
   }
</script>
	<script>
		var result = "${msg}";

		if (result == "signup") {
			alert("회원 가입이 완료되었습니다. 다시 로그인 해주세요.");
		}
		$(document).ready(function() {
			$("form").submit(function(event) {
				var id = $('#memId').val();
				var pw = $('#memPw').val();
				if (id != "" && pw != "") {
				}
				if (id == "") {
					event.preventDefault();
					return;
				}
				if (pw == "") {
					event.preventDefault();
					return;
				}
			});

			$('#js-login-btn').click(function() {
				var auth = $('input[name="auth"]:checked').val();
				if (auth == 1) {//일반, 관리자 회원 로그인
					$("form").attr("action", "/loginPost");
				} else {
					//과학기술인 회원 로그인
					$("form").attr("action", "/techLoginPost");

				}
				$("form").submit();
			});
		});

		/* 	$(document).ready(function() {

				$("#myForm").submit(function(event) {
					var auth = $('input[name="auth"]:checked').val();

					if (auth == 1) {//일반, 관리자 회원 로그인
						$("#myForm").attr("action", "/loginPost").submit();

					} else {
						//과학기술인 회원 로그인
						$("#myForm").attr("action", "/techLoginPost").submit();
					}

				}); // end submit()

			}); */// end ready()
		/* 		$("#js-login-btn").click(function(event) {

		 // Fetch form to apply custom Bootstrap validation
		 var form = $("#myForm")

		 if (form[0].checkValidity() === false) {
		 event.preventDefault()
		 event.stopPropagation()
		 }

		 form.addClass('was-validated');
		 // Perform ajax submit here...
		 }); */
	</script>
</body>
</html>