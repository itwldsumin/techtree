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
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">

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

<style>
.row {
	padding-top: 1rem;
}

.row1 {
	padding-top: 2rem;
	padding-bottom: 2rem;
}

.name {
	font-weight: bolder;
}

label {
	display: inline-block;
	margin-bottom: 0.4rem;
	margin-top: 0.7rem;
}

.form-label {
	font-weight: 800;
}

.comment_posep {
	padding: 1.0rem 1.0rem;
}

.img_posep {
	display: inline-block;
	margin-right: 0.5rem;
}

.author_posep {
	display: inline-block;
}

.delete_posep {
	position: absolute;
	top: 0;
	right: 0;
}

.trash_posep {
	font-size: 16px;
}

.btn_posep {
	padding: 1.0rem 1.0rem;
}

li {
	margin-bottom: 10px;
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

					<!-- scheduleForm start -->
					<div class="scheduleForm mT80">
						<h3>${qnaVO.techName}님의 스케줄표</h3>
						<div class="mT10">${qnaVO.schedule}</div>
					</div>


				<div class="row">
					<div class="col-12">

						<form role="form" action="modify" method="post">
							<input type='hidden' name='qnaNo' value="${qnaVO.qnaNo}"
								id="qnaNo"> <input type='hidden' name='page'
								value="${cri.page}"> <input type='hidden'
								name='perPageNum' value="${cri.perPageNum}"> <input
								type='hidden' name='searchType' value="${cri.searchType}">
							<input type='hidden' name='keyword' value="${cri.keyword}">
							<input type='hidden' name='memId' value="${qnaVO.memId}"
								id="memId"> <input type='hidden' name='techId'
								value="${qnaVO.techId}" id="techId">

						</form>



						<div class="row">
							<div class="col-12">

								<div class="form-group">
									<label class="form-label" for="simpleinput">제목</label> <input
										type="text"
										class="form-control form-control-lg  border-info bg-"
										name="title" id="title" value="${qnaVO.title}"
										readonly="readonly" style="border: none;">
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<label class="form-label" for="simpleinput">작성자</label> <input
										type="text" class="form-control form-control-lg border-info"
										name="memName" id="memName" readonly="readonly"
										value="${qnaVO.memName}" style="border: none;">
								</div>
							</div>

							<div class="col-6">
								<div class="form-group">
									<label class="form-label" for="simpleinput">요청 분야</label> <input
										type="text" class="form-control form-control-lg border-info"
										name="class3Name" id="class3Name" value="${qnaVO.class3Name}"
										readonly="readonly" style="border: none;">
								</div>
							</div>

							<div class="col-6">
								<div class="form-group">
									<label class="form-label" for="simpleinput">종류</label> <input
										type="text" class="form-control form-control-lg border-info"
										name="type" id="type" value="${qnaVO.type}"
										readonly="readonly" style="border: none;">
								</div>
							</div>




							<div class="col-6">
								<div class="form-group">
									<label class="form-label" for="simpleinput">희망 날짜</label> <input
										type="DATE" class="form-control form-control-lg border-info"
										name="hopeDate" id="hopeDate" value="${qnaVO.hopeDate}"
										readonly="readonly" style="border: none;">
								</div>
							</div>
							<div class="col-6">
								<div class="form-group">
									<label class="form-label" for="simpleinput">작성 날짜</label> <input
										type="DATE" class="form-control form-control-lg border-info"
										name="hopeDate" id="hopeDate" value="${qnaVO.regDate}"
										readonly="readonly" style="border: none;">
								</div>
							</div>



							<div class="col-12">
								<div class="form-group">
									<label class="form-label" for="example-textarea">내용</label>
									<textarea class="form-control form-control-lg border-info"
										id="example-textarea" rows="5" name="contents" id="contents"
										readonly="readonly" style="border: none;">${qnaVO.contents}</textarea>
								</div>
							</div>




						</div>
					</div>

				</div>
				<!-- //contain end -->




				<!-- 댓글창 -->
				<div class="row1">
					<div class="col-12">
						<h3>댓글 목록</h3>
						<div
							class="panel-content border-faded border-left-0 border-right-0  border-bottom-0 bg-faded">
							<input type="hidden" value="${techLogin.techId}" id="newTechId">
							<!--    <form role="form" method="get"> -->
							<textarea rows="3" id="newReplyText"
								class="form-control rounded-top border-bottom-left-radius-0 border-bottom-right-radius-0 border"
								placeholder="댓글을 적어주세요"></textarea>
							<div
								class="d-flex align-items-center py-2 px-2 bg-white  border-top-0 rounded-bottom">


								<div
									class="custom-control custom-checkbox custom-control-inline ml-auto hidden-sm-down">
									<%-- ${qnaVO.techId} --%>
								</div>
								<button class="btn btn-info btn-sm ml-auto ml-sm-0"
									id="comentAddBtn">등록</button>
							</div>

							<!--  <img class="mr-3 avatar-sm rounded-circle" src="assets/images/users/avatar-3.jpg" alt="Generic placeholder image"> -->
							<div class="inbox-widget">


								<div class="card">
									<ul class="list-group list-group-flush" id="reply">
									</ul>

									<!-- <div style="folt"style="tex"></div><i class=" mdi mdi-delete-circle-outline" ></i> -->
								</div>
								<div style="text-align: right;"></div>
							</div>

							<!--    </form> -->

						</div>
					</div>


				</div>
				<!-- //container end -->



			</div>
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



<script>
	var qnaNo = $("#qnaNo").val(); // QnA 게시글 번호
	var memId = $("#memId").val();
	var techId = $("#techId").val();
	var loginNo = $("#newTechId").val();
	console.log(qnaNo);
	console.log(memId);
	console.log(techId);
	console.log(loginNo);
	function make_comment(e) {

		var str = "";

		var strbutton = "";

		var strNm = e.memName

		if (strNm == '') {
			strNm = e.techName;
		}

		str += "<li data-replyNo='" + e.replyNo + "'class='list-group-item comment_posep'>"
				+ "<div class='inbox-widget comment_list'>"
				+ "<div class='inbox-item'>"

				+ "<div class='inbox-item-img img_posep'>"
				+ "<img src='/resources/images/sample.png' class='rounded-circle' alt='' width='30px' height='30px'>"
				+ "</div>"

				+ "<div class='inbox-item-author author_posep'>"
				+ "<div class='name'>"
				+ strNm
				+ "</div>"
				+ "<div class='inbox-item-date'>"
				+ e.regDate
				+ "</div>"
				+ "</div>"
				+ "<hr style='margin-top:0.3rem; margin-bottom:0.3rem; border-bottom:1px dashed #ccc'>"
				+ "<div class='inbox-item-text' style='color:black;'>"
				+ e.replyText + "</div>"

				+ "</div>" + "</div>";

		//if (loginNo == this.memId || loginNo == memName)//댓글 정보와 로그인 정보 같을 경우 OR 게시글의 주인 인 경우 댓글 삭제 가능
		console.log(e.techId);
		if (loginNo == e.techId) {
			strbutton += "<div class='pull-right hidden-phone delete_posep' align='right'>"
					+ "  <a href='#' onclick='deleteReply("
					+ e.replyNo
					+ ")' class='btn btn-sm btn-link  text-info font-13 btn_posep'><i class='fa fa-trash trash_posep' ></i></a>"
					+ "</div>";
		}

		str += strbutton;
		str += "</div></li>";

		return str;
	}

	//댓글 저장 버튼 클릭 이벤트 submit
	$("#comentAddBtn").on("click", function() {

		// 입력 form 선택자
		var loginNo = $("#newTechId");
		var replyTextObj = $("#newReplyText");

		var techId = loginNo.val();
		//var memId = $("#memId").val();
		var memId = null;
		var replyText = replyTextObj.val();

		// 댓글 입력처리 수행
		$.ajax({
			type : "post",
			url : "/reply/",
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : "text",
			data : JSON.stringify({
				qnaNo : qnaNo,
				memId : memId,
				techId : techId,
				replyText : replyText
			}),
			success : function(result) {
				if (result === "SUCCESS") {
					alert("댓글이 등록되었습니다.");
					$("#newReplyText").val(""); //댓글 입력창 공백처리
					getReplies(); //댓글 목록 호출
				}
			}
		});
	});

	function deleteReply(replyNo) {

		$.ajax({
			type : 'delete',
			url : '/reply/' + replyNo,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			dataType : 'text',
			success : function(result) {
				console.log("result: " + result);
				if (result == 'SUCCESS') {
					alert("삭제 되었습니다.");
					getReplies();
				}
			}
		});

	}

	function getReplies() {
		$.getJSON("/reply/all/" + qnaNo, function(data) {
			var str = "";
			$(data).each(function() {
				str += make_comment(this);
			});
			$("#reply").html(str);
		});
	}

	getReplies();
</script>

</html>