<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/resources/js/jquery-1.12.4.min.js"></script>
<link id="vendorsbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/vendors.bundle.css">
<link id="appbundle" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/app.bundle.css">
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/skins/skin-master.css">
<link id="myskin" rel="stylesheet" media="screen, print"
	href="/resources/css/stt.css">
<link id="myskin" rel="stylesheet" media="screen, print"
	href="/resources/css/common.css">
<title>과학기술인 전공 등록</title>
</head>
<style>
.label {
	text-align: center;
	font-size: 20px;
	font-weight: bolder;
}
</style>

<body>
	<div class="card m20">
		<div class="card-body">
			<div class="row">
				<div class="form-row col-md-12">
					<div class="form-group col-md-12">
						<div class="label m10">
							<label for="inputEmail4">과학기술인 전공 등록</label>
						</div>


						<div class='box-body'>

							<form action="searchClass3" method="get"
								onsubmit="return searchCheck();">
								<div class="input-group">
									<input type="text" class="form-control" id="class3Name"
										name="class3Name" placeholder="소분류를 검색해주세요.">
									<div class="input-group-append">
										<button class="btn btn-info" type="submit">검색</button>
									</div>
								</div>
							</form>

						</div>
					</div>


					<div class="table-responsive">
						<table class="table table-centered mb-0">
							<thead class="thead-light">
								<tr>
									<th>NO</th>
									<th>대분류명</th>
									<th>중분류명</th>
									<th>소분류명(코드)</th>

								</tr>
							</thead>
							<tbody>
								<c:if test="${!empty class3List}">
									<c:forEach items="${class3List}" var="Class3VO"
										varStatus="listStat">
										<tr>
											<td>${listStat.count}</td>
											<td>${Class3VO.class1Name}</td>
											<td>${Class3VO.class2Name}</td>


											<td><a href="#"
												onclick="sendData('${Class3VO.class3No}', '${Class3VO.class3Name}')">${Class3VO.class3Name}<small>(${Class3VO.class3No})</small></a></td>

										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${empty class3List}">
									<tr style="">
										<td colspan="5">내역이 없습니다.</td>
									</tr>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- end row -->
	</div>
	<!-- end card body-->

</body>
<script type="text/javascript">
	//항목 명 유효성 검사
	function searchCheck() {
		var class3Name = $("#class3Name").val();

		if (class3Name == "") {
			alert("항목 명을 입력해주세요");
			document.getElementById("class3Name").focus();
			return false;
		}

	}
</script>

<script>
	// 부모창으로 정보 보내기
	function sendData(class3No, class3Name) {
		var class3No = class3No;
		var class3Name = class3Name;

		if (class3No === '') {
			$("#class3No", opener.document).attr('readonly', false);
			$("#class3No", opener.document).val('');
			opener.document.frm.class3No.value = class3No;
			opener.document.frm.class3Name.value = class3Name;

		} else {
			$("#class3No", opener.document).attr('readonly', true);
			opener.document.frm.class3No.value = class3No;
			opener.document.frm.class3Name.value = class3Name;

		}

		window.close();

	}
</script>

</html>