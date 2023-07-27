<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
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
<!-- //공통 end -->

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
<style>
.row {
	padding-top: 2rem;
}
</style>
<body>
	<%@include file="../../include/header.jsp"%>
	<div id="wrap">
		<div id="container">

			<!-- contain start -->
			<div id="contain">

				<!-- profileForm start -->


				<div class="profileForm mT80">

					<div class="consultChart">
						<table>
							<caption>컨설팅 횟수 및 협업 횟수에 대한 표</caption>
							<colgroup>
								<col width="50%" />
								<col width="50%" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">컨설팅 횟수</th>
									<th scope="col">협업 횟수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5번</td>
									<td>4번</td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- profileBox start -->
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
									<li><span>이름</span><strong>${technologistVO.techName}</strong></li>
									<li><span>전문분야</span> ${technologistVO.class3Name}</li>
									<li><span>기술자 번호</span>${technologistVO.techId}</li>
									<li><span>이메일</span> <a
										href="mailto:${technologistVO.email}" title="메일 보내기">${technologistVO.email}</a></li>
									<li><span>소속</span>${technologistVO.company}</li>
									<li><span>최종 학력</span>${technologistVO.education}</li>
									<li><span>한 줄 소개</span>
										<p class="introduction">${technologistVO.intro}</p></li>
								</ul>
							</li>
						</ul>
					</div>

					<div class="scheduleForm mT10">
						<h3>${technologistVO.techName}님의 스케줄표</h3>
						<div class="mT10">${technologistVO.schedule}</div>
					</div>

				</div>

	

				<div class="row">
					<div class="col-12">

						<form role="form" name="frm" method="post"
							onsubmit="return validate();">
							<input type="hidden" id="memId" name="memId"
								value="${login.memId}">

							<div class="form-group">
								<label class="form-label" for="simpleinput">제목</label> <input
									type="text" class="form-control form-control-lg border-info"
									name="title" id="title">
							</div>


							<div class="form-group">
								<label class="form-label" for="simpleinput">종류</label>
								<div style="margin-top: 15px;">
									<input type="radio" name="type" id="type" value="컨설팅"
										checked="checked">컨설팅 <input type="radio" name="type"
										id="type" value="협업">협업
								</div>
							</div>


							<div class="form-group">
								<label class="form-label" for="simpleinput">희망 날짜</label> <input
									type="DATE" class="form-control form-control-lg border-info"
									name="hopeDate" id="hopeDate">
							</div>
							<div class="form-group">
								<label class="form-label" for="simpleinput">기술 분야</label>
								<div class="input-group">
									<input type="hidden" name="class3No" id="class3No"> <input
										type="text" class="form-control form-control-lg border-info"
										name="class3Name" id="class3Name" readonly="readonly"
										placeholder="검색버튼을 통해 입력해주세요."
										style="background-color: white;">
									<div class="input-group-append">
										<button class="btn btn-info" type="button"
											onClick="window.open('/member/interestpart/searchPopup?memId=${login.memId}', 'CLIENT_WINDOW',
                                          'toolbar=yes,menubar=yes,width=700.height=500')"
											id="popupBtn">검색</button>
									</div>
								</div>
							</div>


							<div class="form-group">
								<label class="form-label" for="example-textarea">내용</label>
								<textarea class="form-control form-control-lg border-info"
									id="example-textarea" rows="5" name="contents" id="contents"></textarea>
							</div>






							<div class="col-12 mT20 mB30" align="right">
								<button type="submit"
									class="btn  btn-info waves-effect waves-themed" id="btn_submit">등록</button>
							</div>
						</form>

					</div>
				</div>

			</div>
			<!-- //contain end -->

		</div>
		<!-- //container end -->



	</div>






</body>


</html>




