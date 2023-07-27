<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<head>
<meta charset="utf-8">
        <title>
            Profile - Page Views - SmartAdmin v4.5.1
        </title>
        <meta name="description" content="Profile">
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
        <link id="mytheme" rel="stylesheet" media="screen, print"
	href="#">
        <link id="myskin" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/skins/skin-master.css">
        <!-- Place favicon.ico in the root directory -->
        <link rel="apple-touch-icon" sizes="180x180"
	href="/resources/dist/img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32"
	href="/resources/dist/img/favicon/favicon-32x32.png">
        <link rel="mask-icon" href="/resources/dist/img/favicon/safari-pinned-tab.svg"
	color="#5bbad5">
        <!-- Optional: page related CSS-->
        <link rel="stylesheet" media="screen, print"
	href="/resources/dist/css/fa-brands.css">
        <link rel="stylesheet" media="screen, print"
	href="/resources/dist/css/fa-solid.css">
    </head>
</head>

<body>




	<table id="dt-basic-example"
		class="table table-bordered table-hover table-striped w-100">
		<thead class="bg-primary-600" style="text-align: center;">

			<tr>
				<th>No</th>

				<th>중분류명</th>

			</tr>
		</thead>

		<tbody>

			<c:if test="${!empty list2}">
				<c:forEach items="${list2}" var="Class2VO">
					<tr>

						<td>${Class2VO.class2No}</td>
						<td>${Class2VO.class2Name}</td>


					</tr>
				</c:forEach>

			</c:if>
			<c:if test="${empty list2}">
				<tr>
					<td colspan="4">내역이 없습니다.</td>
				</tr>
			</c:if>

		</tbody>
	</table>

	<br>
	<br>
	<br> 중분류이름 :${class2VO.class2Name}
	<br> 중분류 설명:${class2VO.class2Contents}
	<br>
	<br>
	<br>


	<table id="dt-basic-example"
		class="table table-bordered table-hover table-striped w-100">
		<thead class="bg-primary-600" style="text-align: center;">

			<tr>
				<th>No</th>

				<th>소분류명</th>

			</tr>
		</thead>

		<tbody>

			<c:if test="${!empty list3}">
				<c:forEach items="${list3}" var="Class3VO">
					<tr>

						<td>${Class3VO.class3No}</td>
						<td>${Class3VO.class3Name}</td>


					</tr>
				</c:forEach>

			</c:if>
			<c:if test="${empty list3}">
				<tr>
					<td colspan="4">내역이 없습니다.</td>
				</tr>
			</c:if>

		</tbody>
	</table>




	<table id="dt-basic-example"
		class="table table-bordered table-hover table-striped w-100">
		<thead class="bg-primary-600" style="text-align: center;">

			<tr>

				<th>기술자이름</th>
				<th>한줄소개</th>
				<th>영상</th>
				<th>소분류</th>
				<th>소속</th>

			</tr>
		</thead>

		<tbody>


			<c:if test="${!empty listT}">
				<c:forEach items="${listT}" var="TechnologistVO">
					<tr>
						<td>${TechnologistVO.techName}</td>
						<td>${TechnologistVO.intro}</td>
						<td>${TechnologistVO.video1}</td>
						<td>${TechnologistVO.class3No}</td>
						<td>${TechnologistVO.company}</td>


					</tr>
				</c:forEach>

			</c:if>
			<c:if test="${empty listT}">
				<tr>
					<td colspan="4">내역이 없습니다.</td>
				</tr>
			</c:if>

		</tbody>
	</table>


	<div class="card border mb-g">
		<div class="card-body pl-4 pt-4 pr-4 pb-0">
			<div class="d-flex flex-column">
				<div class="border-0 flex-1 position-relative shadow-top">
					<div class="pt-2 pb-1 pr-0 pl-0 rounded-0 position-relative"
						tabindex="-1">
						<span
							class="profile-image rounded-circle d-block position-absolute"
							style="background-image: url('/resources/dist/img/demo/avatars/avatar-admin.png'); background-size: cover;"></span>
						<div class="pl-5 ml-5">
							<textarea class="form-control border-0 p-0 fs-xl bg-transparent"
								rows="4" placeholder="What's on your mind Codex?..."></textarea>
						</div>
					</div>
				</div>
				<div
					class="height-8 d-flex flex-row align-items-center flex-wrap flex-shrink-0">
					<a href="javascript:void(0);"
						class="btn btn-icon fs-xl width-1 mr-1" data-toggle="tooltip"
						data-original-title="More options" data-placement="top"> <i
						class="fal fa-ellipsis-v-alt color-fusion-300"></i>
					</a> <a href="javascript:void(0);" class="btn btn-icon fs-xl mr-1"
						data-toggle="tooltip" data-original-title="Attach files"
						data-placement="top"> <i
						class="fal fa-paperclip color-fusion-300"></i>
					</a> <a href="javascript:void(0);" class="btn btn-icon fs-xl mr-1"
						data-toggle="tooltip" data-original-title="Insert photo"
						data-placement="top"> <i
						class="fal fa-camera color-fusion-300"></i>
					</a>
					<button class="btn btn-info shadow-0 ml-auto">Post</button>
				</div>
			</div>
		</div>
	</div>

                                        <div class="panel-content border-faded border-left-0 border-right-0 border-bottom-0 bg-faded">
                                            <textarea rows="3" class="form-control rounded-top border-bottom-left-radius-0 border-bottom-right-radius-0 border" placeholder="write a reply..."></textarea>
                                            <div class="d-flex align-items-center py-2 px-2 bg-white border border-top-0 rounded-bottom">
                                                
                                           
                                                <div class="custom-control custom-checkbox custom-control-inline ml-auto hidden-sm-down">
                                                    <input type="checkbox" class="custom-control-input" id="defaultInline1">
                                                    <label class="custom-control-label" for="defaultInline1">Press <strong>ENTER</strong> to send</label>
                                                </div>
                                                <button class="btn btn-primary btn-sm ml-auto ml-sm-0">
                                                    Reply
                                                </button>
                                            </div>
                                        </div>
	<%-- 	<table id="dt-basic-example"
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
				<c:forEach items="${list}" var="TechnologistVO" varStatus="status">
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
 --%>

</body>
</html>