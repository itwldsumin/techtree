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
</html>