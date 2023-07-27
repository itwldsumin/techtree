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


</head>
<body>
	<%@include file="../../include/header.jsp"%>
	<div id="wrap">
		<div id="container">

			<!-- contain start -->
			<div id="contain">

				<!-- profileForm start -->

				<form role="form" method="post">
					<input type='hidden' name='techId' value="${technologistVO.techId}">
				</form>
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
						<div class="videoForm2">
							<ul>
								<li>
									<div class="video">
										<p>
											<iframe width="100%" height="230"
												src="${technologistVO.video1}" frameborder="0"
												allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
												title="꿈(어린시절, 지금), 제일 재미 있어 하는 개발)" allowfullscreen></iframe>
										</p>
										<strong class="txtCut" title="꿈(어린시절, 지금), 제일 재미 있어 하는 개발">꿈(어린시절,
											지금), 제일 재미 있어 하는 개발</strong>
									</div>
								</li>
								<li>
									<div class="video">
										<p>
											<iframe width="100%" height="230"
												src="${technologistVO.video2}" frameborder="0"
												allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
												title="주 개발 및 성과" allowfullscreen></iframe>
										</p>
										<strong class="txtCut" title="주 개발 및 성과">주 개발 및 성과</strong>
									</div>
								</li>
								<li>
									<div class="video">
										<p>
											<iframe width="100%" height="230"
												src="${technologistVO.video3}" frameborder="0"
												allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
												title="협업, 컨설팅 가능분야" allowfullscreen></iframe>
										</p>
										<strong class="txtCut" title="협업, 컨설팅 가능분야">협업, 컨설팅
											가능분야</strong>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!-- //profileBox end -->

				</div>
				<!-- //profileForm end -->

				<!-- scheduleForm start -->
				<div class="scheduleForm mT80">
					<h3>${technologistVO.techName}님의 스케줄표</h3>
					<div class="mT10">${technologistVO.schedule}</div>
				</div>
				<!-- //scheduleForm end -->

				<!-- 주개발 성과 start -->
				<div class="techLayout mT80">
					<h3>주개발 성과</h3>
					<div>${technologistVO.performance}</div>
				</div>
				<!-- 주개발 성과 end -->
				<!-- 컨설팅, 협업 가능 분야 start -->
				<div class="techLayout mT80">
					<h3>컨설팅 가능 분야</h3>
					<div>
						<ul class="list">
							<c:forEach items="${everyClass3List}" var="CanPartVO"
								varStatus="listStat">
								<li>${CanPartVO.class3Name}</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="techLayout mT80">
					<h3>협업 가능 분야</h3>
					<div>
						<ul class="list">
							<c:forEach items="${everyClass3List2}" var="CanPartVO"
								varStatus="listStat">
								<li>${CanPartVO.class3Name}</li>
							</c:forEach>
						</ul>
					</div>
					<!-- //컨설팅, 협업 가능 분야 end -->


					<p class="clearfix">


						<a href="/member/QnA/register?techId=${technologistVO.techId}"
							type="button" class="floatR mT30 mB30 btnInquiry" id="btn_submit">1:1
							문의하기</a>


					</p>


				</div>
				<!-- //contain end -->

			</div>
			<!-- //container end -->



		</div>
	</div>
</body>
<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		/* 수정버튼 */
		$("#btn_submit").on("click", function() {
			formObj.attr("action", "/member/QnA/register");
			formObj.attr("method", "get");
			formObj.submit();
		});

	});
</script>

</html>