<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Science and Technology Tree</title>
<meta name="description" content="Basic Inputs">
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
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print"
	href="/resources/dist/css/skins/skin-master.css">
<!-- Place favicon.ico in the root directory -->
<link rel="apple-touch-icon" sizes="180x180"
	href="/resources/dist/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/resources/dist/img/favicon/favicon-32x32.png">
<link rel="mask-icon"
	href="/resources/dist/img/favicon/safari-pinned-tab.svg"
	color="#5bbad5">
</head>

<body class="mod-bg-1 mod-nav-link ">
	<%@include file="../../include/adminheader.jsp"%>


	<!-- BEGIN Page Content -->
	<!-- the #js-page-content id is needed for some plugins to initialize -->
	<main id="js-page-content" role="main" class="page-content">

	<div class="subheader">
		<h1 class="subheader-title">
			<i class='subheader-icon fal fa-edit'></i> 대분류 수정
		</h1>
	</div>

	<div class="row">
		<div class="col-xl-12">
			<div id="panel-1" class="panel">
				<!-- <div class="panel-hdr">
					<h2></h2>

				</div> -->




				<div class="panel-container show">
					<div class="panel-content">

						<form role="form" name="frm" method="post" >
						<%-- <input type='hidden' name='class1No' value="${class1VO.class1No}">  --%>
							<input type='hidden' name='page' value="${cri.page}"> 
							<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
							<input type='hidden' name='searchType' value="${cri.searchType}">
							<input type='hidden' name='keyword' value="${cri.keyword}">
							
							<div class="form-group">
								<label class="form-label" for="simpleinput">대분류코드</label><input
									type="text" id="class1No" class="form-control"
									value="${class1VO.class1No}" name="class1No" readonly>
							</div>
							
							
							<div class="form-group">
								<label class="form-label" for="simpleinput">대분류명</label><input
									type="text" id="class1Name" class="form-control"
									value="${class1VO.class1Name}" name="class1Name">
							</div>


							<div class="form-group">
								<label class="form-label" for="example-textarea">상세내용</label>
								<textarea class="form-control" id="class1Contents" rows="5"
								name="class1Contents">${class1VO.class1Contents}</textarea>
							</div>



							<button type="submit" class="btn  btn-primary waves-effect waves-themed" id="btn_submit1">수정</button>
								
	
								  <button type="submit" class="btn  btn-primary waves-effect waves-themed" id="btn_submit2">삭제</button>
								<button type="button"
								class="btn btn-primary  waves-effect waves-themed"
								id="btn_list">목록</button>
								 </form>
								 
								 
					</div>
				</div>
			</div>
		</div>




	</div>
	</main>
	<!-- this overlay is activated only when mobile menu is triggered -->
	<div class="page-content-overlay" data-action="toggle"
		data-class="mobile-nav-on"></div>
	<!-- END Page Content -->
	<%@include file="../../include/footer.jsp"%>
	
	<script src="/resources/dist/js/vendors.bundle.js"></script>
	<script src="/resources/dist/js/app.bundle.js"></script>
	<script type="text/javascript">
		var example_gridsize = $("#example-gridsize");

		$("#gridrange").on(
				"input change",
				function() {
					//do something
					example_gridsize.attr("placeholder", ".col-"
							+ $(this).val());
					example_gridsize.parent().removeClass().addClass(
							"col-" + $(this).val())
					console.log("col-" + $(this).val());
				});
		
		
		
		
	</script>

</body>
<script>
   $(document).ready(function() {

      var formObj = $("form[role='form']");

      console.log(formObj);

      /* 삭제버튼 */
      $("#btn_submit2").on("click", function() {
         formObj.attr("action", "/admin/class1/remove");
         formObj.submit();
      });

      /* 수정버튼 */
      $("#btn_submit1").on("click", function() {
         formObj.attr("action", "/admin/class1/modify");
         /* formObj.attr("method", "post");  */
         formObj.submit();
      });
      
      
      /* 목록버튼 */
      $('#btn_list').on("click", function(evt) {

          self.location = "list";

       });

   });

</script>
<!-- END Body -->
</html>