<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<html>
<head>
<title>Science and Technology Tree</title>
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

<link rel="stylesheet" media="screen, print"
	href="/resources/dist/css/formplugins/dropzone/dropzone.css">
<link rel="stylesheet" href="/resources/css/common.css" />
<!-- base css -->
<link id="vendorsbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/vendors.bundle.css">
<link id="appbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/app.bundle.css">
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/skins/skin-master.css">

</head>

<script type="text/javascript">
	function validate() {
		var class3No = $("#class3No").val();
		var techId = $("#techId").val();
		var techPW = $("#techPW").val();
		var techName = $("#techName").val();

		if (class3No == "") {

			alert("전문 분야기술을 입력해주세요.");
			$("#class3No").focus();

			return false;
		}
		if (techId == "") {

			alert("기술인 번호를 입력해주세요.");
			$("#techId").focus();

			return false;
		}

		if (techPW == "") {
			alert("비밀번호를 입력해주세요.");
			$("#techPW").focus();

			return false;
		}

		if (techName == "") {
			alert("기술인 이름을 입력해주세요.");
			$("#techName").focus();

			return false;
		}

		if (intro == "") {

			alert("한 줄 소개를 입력해주세요.");
			$("#intro").focus();

			return false;
		}

		return true;

	}
</script>

<body class="mod-bg-1 mod-nav-link ">

	<%@include file="../../include/adminheader.jsp"%>

	<!-- BEGIN Page Content -->
	<!-- the #js-page-content id is needed for some plugins to initialize -->
	<main id="js-page-content" role="main" class="page-content">

	<div class="subheader">
		<h1 class="subheader-title">
			<i class='subheader-icon fal fa-edit'></i> 과학기술인 수정하기
		</h1>
	</div>

	<div class="row">
		<div class="col-xl-10">
			<div id="panel-1" class="panel">
				<div class="panel-container show">
					<div class="panel-content">
						<form role="form" name="frm" method="post"
							onsubmit="return validate();" enctype="multipart/form-data">

							<div class="form-group">
								<label class="form-label" for="simpleinput">과학기술인등록번호</label> <input
									type="text" class="form-control " name="techId" id="techId"
									readonly="readonly" value="${technologistVO.techId} ">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">과학기술인 비밀번호</label> <input
									type="text" class="form-control " name="techPW" id="techPW"
									value="${technologistVO.techPW} ">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">이름</label> <input
									type="text" class="form-control " name="techName" id="techName"
									value="${technologistVO.techName} ">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">소속</label> <input
									type="text" class="form-control " name="company" id="company"
									value="${technologistVO.company} ">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">연락처</label> <input
									type="text" class="form-control " name="tel" id="tel"
									value="${technologistVO.tel} ">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">이메일</label> <input
									type="text" class="form-control " name="email" id="email"
									value="${technologistVO.email} ">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">주소</label> <input
									type="text" class="form-control " name="address" id="address"
									value="${technologistVO.address} ">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">최종학력</label> <input
									type="text" class="form-control " name="education"
									id="education" value="${technologistVO.education} ">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">꿈(어린시절, 지금),
									제일 재미 있어 하는 개발 영상</label> <input type="text" class="form-control "
									name="video1" id="video1" value="${technologistVO.video1}">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">주 개발 및 성과 영상</label>
								<input type="text" class="form-control " name="video2"
									id="video2" value="${technologistVO.video2}">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">협업, 컨설팅 가능분야
									영상</label> <input type="text" class="form-control " name="video3"
									id="video3" value="${technologistVO.video3}">
							</div>
				
						<div class="form-group">
								<label class="form-label" for="simpleinput">전공 </label>
								<div class="input-group">
									<input type='hidden' name='class3No'
										value="${technologistVO.class3No}" id="class3No"><input
										type="text" class="form-control" name="class3Name"
										id="class3Name" value="${technologistVO.class3Name}">
									<div class="input-group-append">
										<button class="btn btn-info" type="button"
											onClick="window.open('/admin/technologist/searchPopup?','CLIENT_WINDOW',
                                          'toolbar=yes,menubar=yes,width=700.height=500')"
											id="popupBtn">검색</button>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">스케줄 링크</label> <input
									type="text" class="form-control" name="schedule" id="schedule"
									value='${technologistVO.schedule}'>
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">주개발성과</label> <input
									type="text" class="form-control" name="performance"
									id="performance" value='${technologistVO.performance}'>
							</div>
							<div class="form-group">
								<label class="form-label" for="example-textarea">소개글 한 줄</label>
								<textarea class="form-control " rows="5" name="intro" id="intro">${technologistVO.intro}</textarea>
							</div>


							<div class="row">
								<div class="col-xl-12">
									<div id="panel-1" class="panel">

										<div class="panel-container show">
											<div class="panel-content">

												<div id='mydropzone' class="dropzone needsclick"
													style="min-height: 7rem;">
													<input type="file" id="fileUpload" name="fileUpload"
														style="visibility: hidden;" />
													<div class="dz-message needsclick fileDrop">
														<i class="fal fa-cloud-upload text-muted mb-3"></i> <br>
														<span class="text-uppercase">Drop files here or
															click to upload.</span> <br> <span class="fs-sm text-muted">This
															is just a demo dropzone. Selected files are <strong>not</strong>
															actually uploaded.
														</span>
													</div>
												</div>
												<div>
													<ul class="dropzone-previews clearfix uploadedList">

														<c:if test="${!empty filesVO}">
															<c:forEach items="${filesVO}" var="filesVO"
																varStatus="status">

																<li class="dropzone-previews mt-3">
																	<div
																		class="card mt-1 mb-0 shadow-none border dz-processing dz-image-preview dz-success dz-complete">
																		<div class="p-2">
																			<div class="row align-items-center">
																				<img data-dz-thumbnail=""
																					class="avatar-sm rounded bg-light"
																					src="/displayFile?fileName=${filesVO.fileLocation}">
																				<div class="col pl-0">
																					<a
																						href="/displayFile?fileName=${filesVO.fileLocation}"
																						text-muted font-weight-bold data-dz-name="">
																						${filesVO.fileName}</a>
																				</div>
																				<div class="col-auto">
																					<a href="${filesVO.fileLocation}"
																						class="btn btn-default btn-xs pull-right delbtn"><i
																						class="fa fa-times-circle"></i></a>
																				</div>
																			</div>
																		</div>
																	</div>
																</li>
															</c:forEach>
														</c:if>

													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<button type="submit"
								class="btn  btn-primary waves-effect waves-themed"
								id="btn_submit">수정</button>


							<button type="button"
								class="btn btn-primary  waves-effect waves-themed" onclick="location.href='read?techId=${technologistVO.techId}'">취소</button>

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

	<script src="/resources/dist/js/vendors.bundle.js"></script>
	<script src="/resources/dist/js/app.bundle.js"></script>

</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/dist/js/upload.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/validate.js/0.12.0/validate.min.js"></script> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script id="template" type="text/x-handlebars-template">
<li class="dropzone-previews mt-3">
<div class="card mt-1 mb-0 shadow-none border dz-processing dz-image-preview dz-success dz-complete">
<div class="p-2">
<div class="row align-items-center">
 <div class="col-auto">
    <img data-dz-thumbnail="" class="avatar-sm rounded bg-light" src="{{imgsrc}}">
 </div>
 <div class="col pl-0">
   <a href="/displayFile?fileName={{fullName}}" text-muted font-weight-bold" data-dz-name="">{{fileName}}</a>
 </div>
 <div class="col-auto">
   <a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-times-circle"></i></a>
 </div>
</div>
</div>
</div>
</li>
</script>
<script>
	$(document).ready(
			function() {
				var formObj = $("form[role='form']");

				formObj.submit(function(event) {
					event.preventDefault();
					//유효성 검사

					var val = validate();

					if (val) {

						var that = $(this);

						var str = "";

						$(".uploadedList .delbtn").each(
								function(index) {
									str += "<input type='hidden' name='files'"
											+ " value='" + $(this).attr("href")
											+ "'> ";
								});

						that.append(str);
						console.log(str);

						that.get(0).submit();

					}//if문 종료

				});

			});

	$('#mydropzone').click(function(event) {

		document.frm.fileUpload.click();

	});

	var template = Handlebars.compile($("#template").html());

	//dragenter dragover, drop 기본 동작 막기(기본적인 이벤트 처리 제한 preventDefault) 끌어다 놓으면 새로운 창이 열리는 동작
	$(".fileDrop").on("dragenter dragover", function(event) {
		event.preventDefault();
	});

	$(".fileDrop").on("drop", function(event) {
		event.preventDefault();

		var uploaded = $("#uploadCount").val();

		//event.dataTransfer=이벤트와 같이 전달된 데이터   
		//dataTransfer.files= 그안 에 포함된 전달된 파일 데이터를 찾아 가져오는 부분
		//jQuery를 이용하는 경우 envent가 순수한 DOM 이벤트가 아니기때문에 
		var files = event.originalEvent.dataTransfer.files;

		var file = files[0];

		//formData를 이용한 서버 호출 (기존 <form>태그로 만든 데이터 전송방식과 동일)
		var formData = new FormData();

		//file 이름으로 파일 객체 추가
		formData.append("file", file);

		//$.post()를 사용하지 않고 $.ajax() 사용하는 대신 processData,contentType: false로 지정
		$.ajax({
			url : '/uploadAjax',
			data : formData,
			dataType : 'text',
			processData : false, //데이터를 자동 변환 할 것인지(true:일반적인 query string / false:자동 변환 없이)
			contentType : false, //기본값(true) application/urlcod 타입으로 전송 / 파일의 경우(false) multipart/form_data 방식으로 전송
			type : 'POST',
			success : function(data) {

				var fileInfo = getFileInfo(data);
				var html = template(fileInfo);

				var str = "";

				$(".uploadedList").append(html);

				uploaded++;
				$("#uploadCount").attr("value", uploaded);

				$(".uploadedList").append(str);
			}
		});
	});

	//클릭으로 파일 업로드할 때 호출되는 함수
	$("#fileUpload").on("change", function(event) {
		event.preventDefault();

		var uploaded = $("#uploadCount").val();

		if (uploaded >= 1) {
			alert('프로필 사진은 1개만 업로드할 수 있습니다.');
			return;
		}

		// 파일업로드 인풋에서 파일을 받음
		var file = document.getElementById("fileUpload").files[0];

		// 새로운 폼데이터를 생성
		var formData = new FormData();

		// 폼데이터에 파일을 붙임
		formData.append("file", file);

		// AJAX로 uploadAjax 메소드를 호출해서 파일을 업로드함
		$.ajax({
			url : '/uploadAjax',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data) {

				var fileInfo = getFileInfo(data);
				var html = template(fileInfo);

				var str = "";

				$(".uploadedList").append(html);

				uploaded++;
				$("#uploadCount").attr("value", uploaded);

				$(".uploadedList").append(str);
			}
		});
	});

	//첨부파일 삭제 처리
	$(".uploadedList").on("click", ".delbtn", function(event) {
		event.preventDefault();

		var that = $(this);
		var uploaded = $("#uploadCount").val();

		$.ajax({
			url : "/deleteFile",
			type : "post",
			data : {
				fileName : $(this).attr("href")
			},
			dataType : "text",
			success : function(result) {

				if (result == 'deleted') {

					that.closest("li").remove();
					uploaded--;
					$("#uploadCount").attr("value", uploaded);

				}
			}

		});

	});
	//파일링크 처리(길이를 줄여줌)
	function getOriginalName(fileName) {

		if (checkImageType(fileName)) {
			return;
		}

		var idx = fileName.indexOf("_") + 1;
		return fileName.substr(idx);

	}
	//이미지파일 원본 파일 찾기
	function getImageLink(fileName) {

		if (!checkImageType(fileName)) {
			return;
		}
		//fileName.substring(0,12)/년/월/일 경로 추출  
		//fileName.substring(14) 파일 이름앞의 's_'제거
		var front = fileName.substr(0, 12);
		var end = fileName.substr(14);

		return front + end;

	}
</script>

<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$("#btn_submit").on("click", function() {
			formObj.attr("action", "/admin/technologist/modify");
			formObj.attr("method", "post");
			formObj.submit();

		});

		/* 목록버튼 */
	/* 	$('#btn_list').on("click", function(evt) {

			self.location = "admin/technologist/read/techId=${technologistVO.techId}";

		}); */

	});
</script>
<!-- END Body -->
</html>