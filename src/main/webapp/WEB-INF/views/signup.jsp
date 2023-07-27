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
.ex {
	height: calc(1.47em + 1rem + 2px);
	padding: 0.1rem 0.2rem;
	font-size: 0.4125rem;
	font-weight: 400;
	border: 1px solid #E5E5E5;
	border-radius: 4px;
}

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

<body>
	<script type="text/javascript">
		function validate() {

			var memId = $("#memId").val();
			var memPw = $("#memPw").val();
			var memName = $("#memName").val();

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
				alert("비밀번호를 입력해주세요.");
				$("#memPw").focus();
				return false;
			}
			//이름 입력 유무
			if (memName.value == '') {
				alert("이름을 입력해주세요.");
				$("#memName").focus();
				return false;
			}
			return ture;
		}

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
						$("#registerBtn").prop("disabled", "");

					} else {

						$("#alert_success").hide();
						$("#alert_danger").show();
						$("#registerBtn").prop("disabled", "disabled");

					}
				}
			});
		});
	</script>

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
						<span
							class="text-white opacity-50 ml-auto mr-2 text-white hidden-sm-down">
							이미 회원이신가요? </span>
						<button type="button" onclick="location.href='login'"
							class="btn btn-light ">로그인</button>
					</div>
				</div>
				<div class="flex-1"
					style="background: url(img/svg/pattern-1.svg) no-repeat center bottom fixed; background-size: cover;">
					<div class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0">
						<div class="row">
							<div class="col-xl-12">
								<h3 class="fs-xxl fw-500 mt-4 text-center">회원가입</h3>
							</div>

							<div class="col-xl-6 ml-auto mr-auto">
								<div class="card p-4 rounded-plus bg-faded">

									<form name="frm" method="post" onsubmit="return validate();">

										<div class="form-group">
											<label class="form-label" for="emailverify">회원 종류</label>
											<div style="margin-top: 15px;">
												<input type="radio" name="authority" id="authority"
													value="1" checked="checked">일반회원 <input
													type="radio" name="authority" id="authority" value="2">기업
											</div>
										</div>
										<label class="form-label" for="emailverify">아이디</label>
										<div class="input-group">
											<input type="text" class="form-control" name="memId"
												id="memId" placeholder="아이디를 최소 4 ~ 12 글자 사이로 입력해주세요." />
											<div class="input-group-append">
												<button class="btn btn-info" id="checkBtn" type="button"
													onclick="checkMemId()">중복확인</button>
											</div>

											<div class="invalid-feedback" id="invalid-feedback"
												style="display: none;">*이미 존재하는 아이디 입니다.</div>
											<div class="valid-feedback" id="valid-feedback"
												style="display: none;">*등록 가능한 아이디입니다.</div>
										</div>

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

										<div class="form-group">
											<label class="form-label" for="emailverify">이름</label> <input
												type="text" name="memName" id="memName" class="form-control"
												 maxlength="6">


										</div>


										<div class="form-group">
											<label class="form-label" for="emailverify">회사</label> <input
												type="text" name="company" id="company" class="form-control">


										</div>

										<div class="form-group">
											<label class="form-label" for="emailverify">전화번호</label> <input
												type="text" name="tel" id="tel" class="form-control">


										</div>

										<div class="form-group">
											<label class="form-label" for="emailverify">Email</label> <input
												type="email" name="email" id="email" class="form-control">

										</div>

										<div class="form-group">
											<label class="form-label" for="emailverify">주소 </label> <input
												type="text" id="address" name="address" 
												class="form-control">


										</div>


										<div class="form-group">
											<label class="form-label mR5" for="emailverify">가입
												경로:</label> 지인 <input class="mR5" type='checkbox' name='how'
												value='지인' /> 인터넷<input type='checkbox' class="mR5"
												name='how' value='인터넷' /> 기타:<input type="text" class="ex"
												name='how' id="how">


										</div>


										<div class="form-group">
											<label class="form-label mR5" for="emailverify">목적: </label>
											컨설팅<input type='checkbox' class="mR5" name='goal' value='컨설팅' />
											협업<input type='checkbox' name='goal' value='협업' />
										</div>


										<div class="form-group demo">
											<label class="form-label mR5" for="emailverify">개인정보
												수집 동의서: </label>
											<textarea rows="10" cols="77" readonly="readonly"
												style="background-color: white;">Ⅰ. 개인정보의 수집 및 이용 동의서
 - 이용자가 제공한 모든 정보는 다음의 목적을 위해 활용하며, 하기 목적 이외의 용도로는 사용되지 않습니다.
① 개인정보 수집 항목 및 수집·이용 목적
 가) 수집 항목 (필수항목)
- 성명(국문), 주민등록번호, 주소, 전화번호(자택, 휴대전화), 사진, 이메일, 나이, 재학정보, 병역사항,외국어 점수, 가족관계, 재산정도, 수상내역, 사회활동, 타 장학금 수혜현황, 요식업 종사 현황 등 지원 신청서에 기재된 정보 또는 신청자가 제공한 정보
 나) 수집 및 이용 목적
- 하이트진로 장학생 선발 전형 진행
- 하이트진로 장학생과의 연락 및 자격확인
- 하이트진로 장학생 자원관리
 ② 개인정보 보유 및 이용기간
 - 수집·이용 동의일로부터 개인정보의 수집·이용목적을 달성할 때까지
 ③ 동의거부관리
 - 귀하께서는 본 안내에 따른 개인정보 수집, 이용에 대하여 동의를 거부하실 권리가 있습니다. 다만, 귀하가 개인정보의 수집/이용에 동의를 거부하시는 경우에 장학생 선발 과정에 있어 불이익이 발생할 수 있음을 알려드립니다.</textarea>
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input"
													id="terms" required> <label
													class="custom-control-label" for="terms"> 개인정보 수집,
													이용, 제공하는 것에 동의합니다</label>

											</div>

										</div>

										<div class="row no-gutters">
											<div class="col-md-4 ml-auto text-right">
												<button type="submit" id="registerBtn" disabled="disabled"
													class="btn btn-dark ">확인</button>
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

	<script src="js/vendors.bundle.js"></script>
	<script src="js/app.bundle.js"></script>
</body>
</html>