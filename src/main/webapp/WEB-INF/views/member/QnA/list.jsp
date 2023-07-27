<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Science and Technology Tree 회원:: 대시보드</title>
<meta name="description" content="Basic Inputs">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
<!-- base css -->
<link id="vendorsbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/vendors.bundle.css">
<link id="appbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/app.bundle.css">
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/skins/skin-master.css">
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
.table {
	margin-bottom: 3rem;
	font-weight: 400;
}

.panel {
	padding: 3rem 0 3rem 0;
}

h4 {
	color: black;
	font-weight: bolder;
	margin-bottom: 25px;
	margin-top: 30px;
}

html body a {
	color: #045FB4;
}

.page-item.active .page-link {
    z-index: 3;
    color: #fff;
    background-color: #045FB4;
    border-color: #045FB4;
</style>

<body class="mod-bg-1 mod-nav-link ">
<%@include file="../../include/header.jsp"%>

	<div id="wrap">
		<div class="row" align="center">
			<div class="col-xl-12">
				<div class="panel">
					<div class="panel-container show">
						<div class="panel-content">
							<h4>문의글 전체 목록</h4>

							<table id="dt-basic-example"
								class="table table-bordered table-hover table-striped w-100 text-center">
								<thead class="bg-info-800"
									style="text-align: center; font-weight: bolder;">
									<tr>
										<th>No</th>
										<th>문의 제목</th>
										<th>과학기술인</th>
										<th>기술</th>
										<th>분야</th>
										<th>등록 날짜</th>

									</tr>
								</thead>

								<tbody>
									<c:if test="${!empty mQList}">
										<c:forEach items="${mQList}" var="QnaVO" varStatus="status">
											<tr>
												<td>${status.count}</td>
												<td><a href='read?qnaNo=${QnaVO.qnaNo}&techId=${QnaVO.techId}'>${QnaVO.title}</a></td>
												<td>${QnaVO.techName}</td>
												<td>${QnaVO.class3Name}</td>
												<td>${QnaVO.type}</td>

												<td>${QnaVO.regDate}</td>
											</tr>
										</c:forEach>

									</c:if>
									<c:if test="${empty mQList}">
										<tr>
											<td colspan="6" align="center">내역이 없습니다.</td>
										</tr>
									</c:if>
								</tbody>
							</table>
							<br>
							<div class="dataTables_paginate paging_simple_numbers"
								style="margin: auto;" style="margin: auto;"
								id="dt-basic-example_paginate">
								<nav style="display: inline-flex;">
									<ul class="pagination">
										<c:if test="${pageMaker.prev}">
											<li class="paginate_button page-item previous disabled"
												id="dt-basic-example_previous"><a class="page-link"
												aria-label="dt-basic-example"
												href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }"><span
													aria-hidden="true">«</span> <span
													class="fal fa-chevron-left">Previous</span></a></li>
										</c:if>
										<c:forEach begin="${pageMaker.startPage }"
											end="${pageMaker.endPage }" var="idx">
											<li
												class="paginate_button page-item 
                                       <c:out value="${pageMaker.cri.page == idx? 'active':''}"/>">
												<a class="page-link" href="list${pageMaker.makeSearch(idx)}">${idx}</a>
											</li>
										</c:forEach>
										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<li><a class="page-link"
												href="list${pageMaker.makeSearch(pageMaker.endPage +1) }"><span
													aria-hidden="dt-basic-example">»</span> <span
													class="paginate_button page-item next">Next</span></a></li>
										</c:if>
									</ul>
								</nav>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
</body>

	<script>
		var result = '${msg}';
		/* 문의글 수정하고 전체 목록에서 알람 */

		if (result == 'MODIFY') {
			alert("수정되었습니다.");
			REMOVE

		}
		if (result == 'REMOVE') {
			alert("삭제되었습니다.");
			REMOVE

		}
	</script>
<!-- END Body -->
</html>
