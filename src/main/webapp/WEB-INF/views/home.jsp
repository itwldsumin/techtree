
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
<html lang="en">
<head>
<meta charset="utf-8">
<title>Login - - SmartAdmin v4.5.1</title>

</head>

<body>

	<h2>test</h2>
	<h2>
		안녕하세요 ${LoginDTO.memID}
		<c:if
			test="${mVo.authority eq 1 or mVo.authority eq 2 or mVo.authority eq 3}">
			<span class="loginfo"> <span class="dept_of_top"></span> <b>${mVo.memName}</b>님
				반갑습니다.
			</span>
		</c:if>

		<c:if test="${mVo.authority eq null}">
			<a class="nav-link" href="login">로그인</a>
		</c:if>

		<c:if test="${mVo.authority eq null}">
			<a class="nav-link" href="login">로그인</a>
		</c:if>
	</h2>

<!-- 
insert into class_1 (CLASS1_NO,CLASS1_NAME, CLASS1_CONTENTS)
VALUES('NB','물리학', '');

insert into class_1 (CLASS1_NO,CLASS1_NAME, CLASS1_CONTENTS)
VALUES('NC', '화학', '');

insert into class_1 (CLASS1_NO,CLASS1_NAME, CLASS1_CONTENTS)
VALUES('LA','생명과학', '');

insert into class_1 (CLASS1_NO,CLASS1_NAME, CLASS1_CONTENTS)
VALUES('ED','전기전자', '');

insert into class_1 (CLASS1_NO,CLASS1_NAME, CLASS1_CONTENTS)
VALUES('EE','정보통신', '');

insert into class_1 (CLASS1_NO,CLASS1_NAME, CLASS1_CONTENTS)
VALUES('EF','에너지/자원', '');

insert into class_1 (CLASS1_NO,CLASS1_NAME, CLASS1_CONTENTS)
VALUES('EG','원자력', '');

insert into class_1 (CLASS1_NO,CLASS1_NAME, CLASS1_CONTENTS)
VALUES('EA','기계', '');

insert into class_1 (CLASS1_NO,CLASS1_NAME, CLASS1_CONTENTS)
VALUES('AI','인공지능', ''); -->



<a onclick="window.open('/listpopup?class1No=NB&class2No=NB01', 'CLIENT_WINDOW', 'toolbar=yes,menubar=yes,width=700.height=500')">물리학</a>

<a onclick="window.open('/listpopup?class1No=NC&class2No=NC01', 'CLIENT_WINDOW', 'toolbar=yes,menubar=yes,width=700.height=500')">화학</a>

<a onclick="window.open('/listpopup?class1No=LA&class2No=LA01', 'CLIENT_WINDOW', 'toolbar=yes,menubar=yes,width=700.height=500')">생명과학</a>

<a onclick="window.open('/listpopup?class1No=ED&class2No=ED01', 'CLIENT_WINDOW', 'toolbar=yes,menubar=yes,width=700.height=500')">전기전자</a>

<a onclick="window.open('/listpopup?class1No=EE&class2No=EE01', 'CLIENT_WINDOW', 'toolbar=yes,menubar=yes,width=700.height=500')">정보통신</a>

<a onclick="window.open('/listpopup?class1No=EF&class2No=EF01', 'CLIENT_WINDOW', 'toolbar=yes,menubar=yes,width=700.height=500')">에너지/자원</a>

<a onclick="window.open('/listpopup?class1No=EG&class2No=EG01', 'CLIENT_WINDOW', 'toolbar=yes,menubar=yes,width=700.height=500')">원자력</a>

<a onclick="window.open('/listpopup?class1No=EA&class2No=EA01', 'CLIENT_WINDOW', 'toolbar=yes,menubar=yes,width=700.height=500')">기계</a>

<a onclick="window.open('/listpopup?class1No=NEclass2No=NE01', 'CLIENT_WINDOW', 'toolbar=yes,menubar=yes,width=700.height=500')">인공지능</a>

<button class="btn btn-primary" type="button" id="listpopup" value="EA" >검색</button>
</body>
<!-- END Body -->
<script>
$("#subPopup").click(function(){
	var url = "/listpopup?classNo=" + ${Class1VO.class1No};
    var name = "항목 검색";
    var option = "width = 700, height = 500, top = 100, left = 200, location = no";
    window.open(url, name, option);
});
</script>

</html>
