<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<meta name="format-detection"
	content="telephone=no, address=no, email=no" />
<meta name="author" content="Science and Technology Tree" />
<meta name="description" content="Science and Technology Tree" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<title>Science and Technology Tree</title>

<!-- 공통 start -->
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/stt.css" />
<script src="/resources/js/jquery-1.12.4.min.js"></script>
<script src="/resources/js/common.js"></script>
<!-- //공통 end -->

<link id="vendorsbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/vendors.bundle.css">
<link id="appbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/app.bundle.css">
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/skins/skin-master.css">

<script type="text/javascript">
	function validate() {
		var title = $("#title").val();
		var class3No = $("#class3No").val();
		var hopeDate = $("#hopeDate").val();

		if (title == "") {

			alert("제목을 입력해주세요.");
			$("#title").focus();

			return false;
		}

		if (class3No == "") {
			alert("기술코드를 입력해주세요.");
			$("#class3No").focus();

			return false;
		}
		if (hopeDate == "") {
			alert("희망 날짜를 입력해주세요.");
			$("#hopeDate").focus();

			return false;
		}

		return true;

	}
</script>
</head>
<style>
.row {
	padding: 1rem;
}

.name {
	font-weight: bolder;
}

label {
	display: inline-block;
	margin-bottom: 0.4rem;
	margin-top: 0.7rem;
}

.form-label {
	font-weight: 800;
}

.comment_posep {
	padding: 1.0rem 1.0rem;
}

.img_posep {
	display: inline-block;
	margin-right: 0.5rem;
}

.author_posep {
	display: inline-block;
}

.delete_posep {
	position: absolute;
	top: 0;
	right: 0;
}

.trash_posep {
	font-size: 16px;
}

.btn_posep {
	padding: 1.0rem 1.0rem;
}

li {
	margin-bottom: 10px;
}
</style>
<body>
	<%@include file="../../include/header.jsp"%>

	<div id="wrap">
		<div id="container">
			<!-- contain start -->
			<div id="contain">
				<!-- profileForm start -->
				<div class="profileForm mT50">
					<!-- profileBox start -->
					<h3>기술인 정보</h3>
					<div class="profileBox">
						<ul>
							<li><p class="picture">
									<c:if test="${!empty filesVO}">
										<c:forEach items="${filesVO}" var="filesVO" varStatus="status">

											<img src="/displayFile?fileName=${filesVO.fileLocation}"
												alt=""
												style="width: 300px; height: 400px; overflow: hidden;">
										</c:forEach>
									</c:if>
									<c:if test="${empty filesVO}">
										<img src="/resources/images/sample.png">

									</c:if>

								</p></li>
							<li>
								<ul class="detailInfo">
									<li><span>이름</span><strong>${qnaVO.techName}</strong></li>
									<li><span>이메일</span> <a href="mailto:${qnaVO.email}"
										title="메일 보내기">${qnaVO.email}</a></li>
									<li><span>한 줄 소개</span>
										<p class="introduction">${qnaVO.intro}</p></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- //profileBox end -->
					<!-- scheduleForm start -->
					<div class="scheduleForm mT10">
						<h3>${qnaVO.techName}님의 스케줄표</h3>
						<div class="mT10">${qnaVO.schedule}</div>
					</div>
					<!-- //scheduleForm end -->

				</div>

				<!-- //협업 가능 분야 end -->

				<form role="form" method="post" onsubmit="return validate();">

					<input type='hidden' name='qnaNo' value="${qnaVO.qnaNo}">

					<div class="row">
						<div class="col-12">
							<div class="form-group">
								<label class="form-label" for="simpleinput">제목</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="title" id="title" value="${qnaVO.title}">
							</div>
						</div>

						<div class="col-6">
							<div class="form-group">
								<label class="form-label" for="simpleinput">기술분야</label> <input
									type="hidden" name="class3No" id="class3No"
									value="${qnaVO.class3No}"> <input type="text"
									class="form-control form-control-lg border-info"
									name="class3Name" id="class3Names" value="${qnaVO.class3Name}"
									style="background-color: white;" readonly="readonly">
							</div>
						</div>

				


						<div class="col-6">
							<div class="form-group">
								<label class="form-label" for="simpleinput">문의 종류</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="type" id="type" value="${qnaVO.type}">
							</div>

						</div>


						<div class="col-6">
							<div class="form-group">
								<label class="form-label" for="simpleinput">희망 날짜</label> <input
									type="DATE" class="form-control form-control-lg border-info"
									name="hopeDate" id="hopeDate" value="${qnaVO.hopeDate}">
							</div>
						</div>
						<div class="col-6">
							<div class="form-group">
								<label class="form-label" for="simpleinput">작성 날짜</label> <input
									type="DATE" class="form-control form-control-lg border-info"
									name="regDate" id="regDate" value="${qnaVO.regDate}"
									readonly="readonly">
							</div>
						</div>
						<div class="col-12">

							<div class="form-group">
								<label class="form-label" for="example-textarea">내용</label>
								<textarea class="form-control form-control-lg border-info"
									id="example-textarea" rows="5" name="contents" id="contents">${qnaVO.contents}</textarea>
							</div>
						</div>
						<div class="col-12 mT20 mB30" align="right">
							<button type="submit"
								class="btn  btn-info btn-sm ml-auto ml-sm-0" id="btn_submit">수정</button>
							<button type="button" id="removeBtn1"
								class="btn  btn-info btn-sm ml-auto ml-sm-0">삭제</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>


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

<!-- END Body -->
</html>
