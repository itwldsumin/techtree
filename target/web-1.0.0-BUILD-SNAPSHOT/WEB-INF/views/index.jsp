<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Science and Technology Tree</title>

<!-- 공통 start -->
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/stt.css" />
<script src="/resources/js/jquery-1.12.4.min.js"></script>
<script src="/resources/js/common.js"></script>
<!-- scrollbar custormizing -->
<link rel="stylesheet" href="/resources/css/jquery.mCustomScrollbar.css" />
<script src="/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="/resources/js/scroll.js"></script>
<!-- //scrollbar custormizing -->
<!-- //공통 end -->


</head>
<body>

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
				<a href="javascript:void(0)" title="Science and Technology Tree">Science
					and Technology <span>Tree</span>
				</a>
			</h1>
			<ul>
				<li><c:if
						test="${login.authority eq 1 or login.authority eq 2 }">
						<a href="javascript:void(0)" title="내정보">내정보</a>
					</c:if></li>

				<li><c:if
						test="${login.authority eq 1 or login.authority eq 2 }">
						<a href='/member/dashboard' title="대시보드">대시보드</a>
					</c:if></li>


				<!--    <li><a href="javascript:void(0)" title="Tech Tree">Tech Tree</a></li> -->
				<li><c:if test="${login.authority eq null}">
						<a href="login">로그인</a>
					</c:if> <c:if test="${login.authority ne null}">


						<a href="/logout"><span>Logout</span> </a>
					</c:if></li>
			</ul>
		</div>
		<!-- header end -->

		<!-- container start -->
		<div id="container">
			<div id="nav">
				<div class="treeMenuBox">
					<ul class="treeMenu">
						<li><a href="javascript:subPopup('NB','NB01')" title="물리학"><em></em>물리학</a></li>
						<li><a href="javascript:subPopup('NC','NC01')" title="화학"><em></em>화학</a></li>
						<li><a href="javascript:subPopup('ED','ED01')" title="전기전자"><em></em>전기전자</a></li>
						<li><a href="javascript:subPopup('EE','EE01')" title="정보통신"><em></em>정보통신</a></li>
						<li><a href="javascript:subPopup('EF','EF01')" title="에너지/자원"><em></em>에너지/자원</a></li>
						<li><a href="javascript:subPopup('NE','NE01')" title="인공지능"><em></em>인공지능</a></li>
						<li><a href="javascript:subPopup('EG','EG01')" title="원자력"><em></em>원자력</a></li>
						<li><a href="javascript:subPopup('EA','EA01')" title="기계"><em></em>기계</a></li>
						<li><a href="javascript:subPopup('LA','LA01')" title="생명과학"><em></em>생명과학</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- //container end -->



	</div>



	<!-- layerPop start -->
	<div class="layerPop">
		<div class="layer">
			<h2>
				<p class="menuIcon">
					<img src="" alt="" />
				</p>
				<span>${class2VO.class1Name}</span> <a href="javascript:void(0)"
					class="closeLayer" title="닫기"><em class="IR">닫기</em></a>
			</h2>
			<div class="layerContents">
				<ul class="lnb">
					<c:forEach items="${list2}" var="Class2VO">
						<li><a href="javascript:sub2Popup('${Class2VO.class1No}','${Class2VO.class2No}')" class="
						<c:out value="${class2VO.class2No== Class2VO.class2No ? 'active':''}"/>"
							title="${Class2VO.class2Name}">${Class2VO.class2Name}</a></li>
					</c:forEach>
				</ul>
				
				<div class="contents">
					<h3>${class2VO.class2Name}</h3>
					<h4>${class2VO.class2Contents}</h4>

					<!-- items start -->
					<div class="items">

						<c:if test="${!empty listT}">
							<c:forEach items="${listT}" var="TechList" varStatus="status">
								<c:forEach items="${TechList}" var="TechnologistVO">
									<div class="item">
										<a href="/member/technologist/read?techId=${TechnologistVO.techId}" title="${TechnologistVO.intro}">${TechnologistVO.intro}</a> 
										<span>${TechnologistVO.techName}<em>${TechnologistVO.company}</em></span>
										<p title="${TechnologistVO.major}">${TechnologistVO.major}</p>
										<div class="videoForm">
											<iframe width="100%" height="180"
												src="${TechnologistVO.video1}"
												frameborder="0"
												allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
												title="${TechnologistVO.video1}" allowfullscreen></iframe>
										</div>
									</div>
								</c:forEach>
							</c:forEach>
						</c:if>

						<a href="javascript:void(0)" class="noFrame"></a>
						<!-- //items end -->

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //layerPop end -->

</body>

<script>
	function subPopup(class1No, class2No) {

		$.post("/", {
			class1No : class1No,
			class2No : class2No
		}, function(result) {

			$('.layerPop').html($(result).get(43).innerHTML);
			
		    var treeMenuLiA = $(".treeMenu li a"), //트리메뉴
	        layerPop = $(".layerPop"), //레이어 팝업
	        layerSpan = $(".layer h2 span"), //각 레이어의 제목
	        closeLayer = $(".closeLayer"); //닫기 버튼
			
		    //hide layer
		    $(closeLayer).on("click", function () {
		        $(layerPop).hide();
		        $(".treeMenu li:first a").focus();
		    });
			
		    //모달 안 마지막 링크 아웃시
		    $(".noFrame").on("focusin", function () {
		        $(closeLayer).focus();
		    });
		    
		    $(".lnb li a").on("click", function () {
		        $(".lnb li a").removeClass("active");
		        $(this).addClass("active");
		    });
			

		});

	}
	
	function sub2Popup(class1No, class2No) {

		$.post("/", {
			class1No : class1No,
			class2No : class2No
		}, function(result) {

			$('.layerPop').html($(result).get(43).innerHTML);
			
		    var treeMenuLiA = $(".treeMenu li a"), //트리메뉴
	        layerPop = $(".layerPop"), //레이어 팝업
	        layerSpan = $(".layer h2 span"), //각 레이어의 제목
	        closeLayer = $(".closeLayer"); //닫기 버튼
			
		    //hide layer
		    $(closeLayer).on("click", function () {
		        $(layerPop).hide();
		        $(".treeMenu li:first a").focus();
		    });
			
		    //모달 안 마지막 링크 아웃시
		    $(".noFrame").on("focusin", function () {
		        $(closeLayer).focus();
		    });
		    
		    $(".lnb li a").on("click", function () {
		        $(".lnb li a").removeClass("active");
		        $(this).addClass("active");
		    });
			

		});

	}
	
</script>


</html>