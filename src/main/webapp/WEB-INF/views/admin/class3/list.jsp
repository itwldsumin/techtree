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
<title>Science and Technology Tree</title>
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
</head>

   <%@include file="../../include/adminheader.jsp"%>

   <main id="js-page-content" role="main" class="page-content">
   <ol class="breadcrumb page-breadcrumb">
      <li class="breadcrumb-item"><a href="javascript:void(0);">관리자</a></li>
      <li class="breadcrumb-item">소분류</li>
      <li class="breadcrumb-item active">목록</li>
      <li class="position-absolute pos-top pos-right d-none d-sm-block"><span
         class="js-get-date"></span></li>
   </ol>
   <div class="subheader">
      <h1 class="subheader-title">
         <i class='subheader-icon fal fa-table'> </i> 소분류 목록

      </h1>
   </div>

   <div class="row" align="center">
      <div class="col-xl-10">
         <div id="panel-1" class="panel">

            <div class="panel-container show">
               <div class="panel-content">

                


                  <table id="dt-basic-example"
                     class="table table-bordered table-hover table-striped w-100">
                     <thead class="bg-primary-600" style="text-align: center;">
                        <tr>
                           <th>No</th>
                           <th>대분류명</th>
                           <th>중분류명</th>
                           <th>소분류코드</th>
                           <th>소분류명</th>
                           <th>설명</th>
                        </tr>
                     </thead>

                     <tbody>

                        <c:if test="${!empty list3}">
                           <c:forEach items="${list3}" var="Class3VO" varStatus="status">
                              <tr>
                                 <td>${status.count}</td>
                                 <td>${Class3VO.class1Name}</td>
                                 <td>${Class3VO.class2Name}</td>
                                 <td>${Class3VO.class3No}</td>
                                 <td><a href='modify?class3No=${Class3VO.class3No}'>${Class3VO.class3Name}</a></td>
                                 <td>${Class3VO.class3Contents}</td>

                              </tr>
                           </c:forEach>

                        </c:if>
                        <c:if test="${empty list3}">
                           <tr>
                              <td colspan="5">내역이 없습니다.</td>
                           </tr>
                        </c:if>

                     </tbody>
                  </table>
                  
                  
      
                  <div class="dataTables_paginate paging_simple_numbers"
                        style="margin: auto;" style="margin: auto;" id="dt-basic-example_paginate">
                  <nav style="display: inline-flex;">
                              <ul class="pagination">
                                 <c:if test="${pageMaker.prev}">
                                    <li class="paginate_button page-item previous disabled"
                              id="dt-basic-example_previous"><a class="page-link"
                                       aria-label="dt-basic-example"
                                       href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }"><span
                                          aria-hidden="true">«</span> <span class="fal fa-chevron-left">Previous</span></a></li>
                                 </c:if>
                                 <c:forEach begin="${pageMaker.startPage }"
                                    end="${pageMaker.endPage }" var="idx">
                                    <li class="paginate_button page-item 
                                       <c:out value="${pageMaker.cri.page == idx? 'active':''}"/>">
                                       <a class="page-link"
                                       href="list${pageMaker.makeSearch(idx)}">${idx}</a>
                                    </li>
                                 </c:forEach>
                                 <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                    <li><a class="page-link"
                                       href="list${pageMaker.makeSearch(pageMaker.endPage +1) }"><span
                                          aria-hidden="dt-basic-example">»</span> <span class="paginate_button page-item next">Next</span></a></li>
                                 </c:if>
                              </ul>
                           </nav>
                  </div>
                  <div align="right">
						 <button type="button"  onclick="location.href='register'"
                                 class="btn btn-primary" >등록</button>
						</div>
                  
                  
               

               </div>
            </div>
         </div>
      </div>
   </div>
   </main>

   <%@include file="../../include/footer.jsp"%>
</body>
<!-- END Body -->
</html>