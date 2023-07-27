<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/stt.css" />   -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- BEGIN Page Wrapper -->
<div id="skip-go">
	<p>바로가기</p>
	<ul>
		<li><a href="#nav">주 메뉴 바로가기</a></li>
	</ul>
</div>

<div id="wrap">
	<!-- header start -->
	<div id="header">
		<h1 class="logo">
			<a href="/" title="Science and Technology Tree">Science
				and Technology <span>Tree</span>


			</a>
		</h1>
		<ul>

			<li><c:if test="${techLogin.techId ne null}"> ${techLogin.techName}님 환영합니다.</c:if>
				<c:if test="${login.memId ne null}"> ${login.memName}님 환영합니다.</c:if>
			</li>
			   <li><a href="/" title="Tech Tree" title="Tech Tree">Tech Tree</a></li>
			<li><c:if test="${login.memId ne null }">
					<a href='/member/dashboard' title="대시보드">대시보드</a>
				</c:if> <c:if test="${techLogin.techId ne null }">
					<a href='/technologist/techDashboard' title="대시보드">대시보드</a>
				</c:if></li>
			<li><c:if test="${login.memId ne null }">
					<a href="/member/myInfo" title="내정보">내정보</a>
				</c:if>
				<c:if test="${techLogin.techId ne null }">
					<a href='/technologist/myPage' title="내정보">내정보</a>
				</c:if></li>



			<li><c:if
					test="${ techLogin.techId eq null and login.memId eq null }">
					<a href="login">로그인</a>
				</c:if> <c:if test="${ techLogin.techId ne null }">
					<a href="/logout"><span>Logout</span> </a>
				</c:if> <c:if test="${ login.memId ne null  }">
					<a href="/logout"><span>Logout</span> </a>
				</c:if></li>
		</ul>
	</div>
</div>
</head>
<body>

</body>
</html>