<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<html>
<head>
<title>Science and Technology Tree</title>

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
<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>
<style>
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

			var techPW1 = $("#techPW1").val();
			var techPW2 = $("#techPW2").val();
			if (techPW1 != "" || techPW2 != "") {
				if (techPW1 == techPW2) {
					$("#alert_success").show();
					$("#alert_danger").hide();
					$("#btn_submit").prop("disabled", "");

				} else {

					$("#alert_success").hide();
					$("#alert_danger").show();
					$("#btn_submit").prop("disabled", "disabled");

				}
			}
		});
	});
</script>

<body>
	<%@include file="../include/header.jsp"%>
	<div id="wrap">
		<div id="container">

			<!-- contain start -->
			<div id="contain">
				<div class="row">
					<div class="col-xl-12">
						<h3 class="fs-xxl fw-500 mt-4 text-center">비밀번호 변경</h3>
					</div>


					<div class="col-xl-10 ml-auto mr-auto">
						<div class="card p-4 rounded-plus bg-faded">

							<form role="form" name="frm" method="post"
								onsubmit="return validate();">
								<input type='hidden' name="techId" id="techId"
									value="${technologistVO.techId} " />


								<div class="form-group">
									<label class="form-label" for="emailverify">비밀번호</label> <input
										type="password" name="techPW" id="techPW1"
										class="form-control" placeholder="*********" maxlength="12">
									<label class="form-label" for="emailverify">비밀번호 확인</label> <input
										type="password" name="retechPW" id="techPW2"
										class="form-control" placeholder="*********" maxlength="12">


									<div class="alert alert_success" id="alert_success">*비밀번호가
										일치합니다.</div>
									<div class="alert alert_danger" id="alert_danger">*비밀번호가
										일치하지 않습니다.</div>
								</div>

								<div align="right">
									<button type="submit"
										class="btn  btn-info waves-effect waves-themed"
										disabled="disabled" id="btn_submit">수정</button>


									<button type="button"
										class="btn btn-info  waves-effect waves-themed" id="btn_list">취소</button>
								</div>

							</form>
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

		$("#btn_submit").on("click", function() {
			var result = alert("변경된 비밀번호로 다시 로그인 해주세요.");
			formObj.attr("action", "/technologist/pwModify");
			formObj.attr("method", "post");
			formObj.submit();

		});

		/* 목록버튼 */
		$('#btn_list').on("click", function(evt) {

			self.location = "myPage";

		});

	});
</script>

</html>