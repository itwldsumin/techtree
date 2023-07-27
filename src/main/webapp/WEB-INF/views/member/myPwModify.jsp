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
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/stt.css" />
<script src="/resources/js/jquery-1.12.4.min.js"></script>
<script src="/resources/js/common.js"></script>


<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="assets/css/style.css" />

</head>
<style>
.logo1 h1 {
	font-family: 'Noto Sans KR B';
	font-size: 20px;
	text-align: center;
	padding-bottom: 20px;
	padding-right: 10px;
}

.logo1 a {
	color: #1dc3f3;
}

#alert_danger {
	display: none;
	width: 100%;
	margin-top: 0.1rem;
	font-size: 80%;
	color: #fd3995;
}

#alert_success {
	display: none;
	width: 100%;
	margin-top: 0.1rem;
	font-size: 80%;
	color: #1dc9b7;
}
</style>


	 <script type="text/javascript">
		$(function() {
			$("#alert_success").hide();
			$("#alert_danger").hide();
			$("input").keyup(function() {

				var memPw1 = $("#memPw1").val();
				var memPw2 = $("#memPw2").val();
				if (memPw1 != "" || memPw2 != "") {
					if (memPw1 == memPw2) {
						$("#alert_success").show();
						$("#alert_danger").hide();
						$("#modifyBtn").prop("disabled", "");

					} else {

						$("#alert_success").hide();
						$("#alert_danger").show();
						$("#modifyBtn").prop("disabled", "disabled");

					}
				}
			});
		});
	</script>
<body>



	<div class="page-wrapper auth">
		<div class="page-inner ">
			<div class="page-content-wrapper  m-0">
				<div class="height-10 w-100  bg-info">
					<div class="d-flex align-items-center container p-0">
						<div
							class="page-logo width-mobile-auto m-0 align-items-center justify-content-center p-0 bg-info bg-img-none shadow-0 height-9 border-0">
							<div id="header">
								<div class="logo1">
									<h1>
										<!-- <a href="/" title="Science and Technology Tree"> -->
										<a href="/" title="Science and Technology Tree"
											class="text-white"> Science and Technology Tree </a>
									</h1>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="flex-1"
					style="background: url(img/svg/pattern-1.svg) no-repeat center bottom fixed; background-size: cover;">
					<div class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0">
						<div class="row">
							<div class="col-xl-12">
								<h3 class="fs-xxl fw-500 mt-4 text-center">비밀번호 수정</h3>
							</div>

							<div class="col-xl-6 ml-auto mr-auto">
								<div class="card p-4 rounded-plus bg-faded">

									<form name="frm" role='form' method="post" onsubmit="return validate();">
									<input type='hidden' name="memId" id="memId" value="${MemberVO.memId} "  />

									<div class="form-group">
											<label class="form-label" for="emailverify">비밀번호</label> <input
												type="password" name="memPw" id="memPw1"
												class="form-control" placeholder="*********" maxlength="12">
											<label class="form-label" for="emailverify">비밀번호 확인</label>
											<input type="password" name="rememPw" id="memPw2"
												class="form-control" placeholder="*********" maxlength="12">


											<div class="alert alert_success" id="alert_success">*비밀번호가
												일치합니다.</div>
											<div class="alert alert_danger" id="alert_danger">*비밀번호가
												일치하지 않습니다.</div>
										</div>

										<div class="row no-gutters">
											<div class="col-md-4 ml-auto text-right">
												<button type="submit" id="modifyBtn"
													class="btn btn-dark " disabled="disabled" >수정</button>
													<button type="button" id="btn_list"
													class="btn btn-dark ">취소</button>
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

</body>
<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		/* 수정버튼 */
		$("#modifyBtn").on("click", function() {
			var result = alert("변경된 비밀번호로 다시 로그인 해주세요.");
			formObj.attr("action", "/member/myPwModify");
			formObj.attr("method", "post");
			formObj.submit();
		});

		$('#btn_list').on("click", function(evt) {

	          self.location = "/member/myInfo";

	       });


	});
</script>

</html>