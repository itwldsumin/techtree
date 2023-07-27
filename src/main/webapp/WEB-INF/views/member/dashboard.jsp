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

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<!-- base css -->
<link id="vendorsbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/vendors.bundle.css">
	
<link id="appbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/app.bundle.css">
	


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
	box-shadow: 0px 0px 0px 0px; 
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
</style>

<body >
	<%@include file="../include/header.jsp"%>
	<div id="wrap">
		<div class="row" align="center">
			<div class="col-xl-12">
				<div class="panel mT20">
					<div class="panel-container show">
						<div class="panel-content">
							<h4>최근 문의한 컨설팅 목록</h4>

							<table id="dt-basic-example"
								class="table table-bordered table-hover table-striped w-100 text-center">
								<thead class="bg-info-800"
									style="text-align: center; font-weight: bolder;">
									<tr>
										<th>No</th>
										<th>제목</th>
										<th>기술인 이름</th>
										<th>기술</th>
										<th>작성날짜</th>
									</tr>
								</thead>

								<tbody>
									<c:if test="${!empty mainConsultList}">
										<c:forEach items="${mainConsultList}" var="QnAVO"
											varStatus="status">
											<tr>
												<td>${status.count}</td>
												<td><a href='/member/QnA/read?qnaNo=${QnAVO.qnaNo}&techId=${QnAVO.techId}'>${QnAVO.title}</a></td>
												<td>${QnAVO.techName}</td>
												<td>${QnAVO.class3Name}</td>
												<td>${QnAVO.regDate}</td>

											</tr>
										</c:forEach>

									</c:if>
									<c:if test="${empty mainConsultList}">
										<tr>
											<td colspan="5" align="center">내역이 없습니다.</td>
										</tr>
									</c:if>
								</tbody>
							</table>
							<br>


							<h4>최근 문의한 협업 목록 </h4>
							<table id="dt-basic-example"
								class="table table-bordered table-hover table-striped w-100 text-center">
								<thead class="bg-info-800" style="text-align: center;">
									<tr>
										<th>No</th>
										<th>제목</th>
										<th>기술인 이름</th>
										<th>기술</th>
										<th>작성날짜</th>
									</tr>
								</thead>

								<tbody>
									<c:if test="${!empty mainCooperatList}">
										<c:forEach items="${mainCooperatList}" var="QnAVO"
											varStatus="status">
											<tr>
												<td>${status.count}</td>
												<td><a href='/member/QnA/read?qnaNo=${QnAVO.qnaNo}&techId=${QnAVO.techId}'>${QnAVO.title}</a></td>
												<td>${QnAVO.techName}</td>
												<td>${QnAVO.class3Name}</td>
												<td>${QnAVO.regDate}</td>
											</tr>
										</c:forEach>

									</c:if>
									<c:if test="${empty mainCooperatList}">
										<tr>
											<td colspan="5" align="center">내역이 없습니다.</td>
										</tr>
									</c:if>
								</tbody>
							</table>


						</div>
							<button type="button" onclick="location.href='/member/QnA/list'"
								class="btn btn-info">전체 목록 보러가기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script>
		var result = '${msg}';
       /*  문의글 등록하고 대시보드 화면에서 알람 */
		if (result == 'register') {
			alert(" 등록되었습니다.");
		}

	</script>
<!-- END Body -->
</html>