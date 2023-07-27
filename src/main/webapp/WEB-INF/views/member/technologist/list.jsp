<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>

<!DOCTYPE html>
<!-- 
Template Name:  SmartAdmin Responsive WebApp - Template build with Twitter Bootstrap 4
Version: 4.5.1
Author: Sunnyat A.
Website: http://gootbootstrap.com
Purchase: https://wrapbootstrap.com/theme/smartadmin-responsive-webapp-WB0573SK0?ref=myorange
License: You must have a valid license purchased only from wrapbootstrap.com (link above) in order to legally use this theme for your project.
-->
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
</style>

<body class="mod-bg-1 mod-nav-link ">
	<div id="wrap">
		<!-- header start -->
		<div id="header">
			<h1 class="logo">
				<a href="/" title="Science and Technology Tree">Science and
					Technology <span>Tree</span>
				</a>
			</h1>
			<ul>
				<li><a href="javascript:void(0)" title="내정보">내정보</a></li>
				<li><a href="/member/dashboard" title="대시보드">대시보드</a></li>
				<li><a href="/" title="Tech Tree">Tech Tree</a></li>
				<li><a href="/logout" title="로그아웃">로그아웃</a></li>
			</ul>
		</div>
	</div>
	<br>
	<!-- header end -->
	<div id="wrap">
		<div class="row" align="center">
			<div class="col-xl-12">
				<div class="panel">
					<div class="panel-container show">
						<div class="panel-content">
							<h4>협업리스트</h4>

							<table id="dt-basic-example"
								class="table table-bordered table-hover table-striped w-100 text-center">
								<thead class="bg-info-800"
									style="text-align: center; font-weight: bolder;">
									<tr>
										<th>No</th>
										<th>기술인 번호</th>
										<th>기술인 이름</th>
										<th>소속</th>
										<th>연락처</th>
									</tr>
								</thead>

								<tbody>
									<c:if test="${!empty list}">
										<c:forEach items="${list}" var="TechnologistVO"
											varStatus="status">
											<tr>
												<td>${status.count}</td>
												<td>${TechnologistVO.techId}</td>
												<td><a href='read?techId=${TechnologistVO.techId}'>${TechnologistVO.techName}</a></td>
												<td>${TechnologistVO.company}</td>
												<td>${TechnologistVO.tel}</td>
											</tr>
										</c:forEach>

									</c:if>
									<c:if test="${empty list}">
										<tr>
											<td colspan="5" align="center">내역이 없습니다.</td>
										</tr>
									</c:if>
								</tbody>
							</table>
							<br>


							<h4>컨설팅리스트</h4>
							<table id="dt-basic-example"
								class="table table-bordered table-hover table-striped w-100 text-center">
								<thead class="bg-info-800" style="text-align: center;">
									<tr>
										<th>No</th>
										<th>제목</th>
										<th>기술인 이름</th>
										<th>작성날짜</th>
									</tr>
								</thead>

								<tbody>
									<c:if test="${!empty mainCooperList}">
										<c:forEach items="${mainCooperList}" var="QnAVO"
											varStatus="status">
											<tr>
												<td>${status.count}</td>
												<td><a href='/member/QnA/read?qnaNo=${QnAVO.qnaNo}'>${QnAVO.title}</a></td>
												<td>${QnAVO.techName}</td>
												<td>${QnAVO.regDate}</td>
											</tr>
										</c:forEach>

									</c:if>
									<c:if test="${empty mainCooperList}">
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
<!-- END Body -->
</html>





<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



                  <table id="dt-basic-example"
                     class="table table-bordered table-hover table-striped w-100">
                     <thead class="bg-primary-600" style="text-align: center;">
                        <tr>
                           <th>No</th>
                           <th>기술인 번호</th>
                           <th>기술인 이름</th>
                           <th>소속</th>
                           <th>연락처</th>

                        </tr>
                     </thead>

                     <tbody>

                        <c:if test="${!empty list}">
                           <c:forEach items="${list}" var="TechnologistVO"
                              varStatus="status">
                              <tr>
                                 <td>${status.count}</td>
                                 <td>${TechnologistVO.techId}</td>
                                 <td><a href='read?techId=${TechnologistVO.techId}'>${TechnologistVO.techName}</a></td>
                                 <td>${TechnologistVO.company}</td>
                                 <td>${TechnologistVO.tel}</td>
                              </tr>
                           </c:forEach>

                        </c:if>
                        <c:if test="${empty list}">
                           <tr>
                              <td colspan="5" align="center">내역이 없습니다.</td>
                           </tr>
                        </c:if>

                     </tbody>
                  </table>



</body>
</html> --%>