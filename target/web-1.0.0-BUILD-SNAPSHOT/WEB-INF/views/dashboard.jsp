
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
        <title>
            Login - - SmartAdmin v4.5.1
        </title>
        
    </head>
   
    <body>
      
        <h2>test</h2>
          <h2>${LoginDTO.memID}</h2><h2>${mVo.memId}</h2><h2>${LOGIN.memId}</h2><h2>${MemberVO.memId}</h2>
          <%session.getAttribute("LOGIN.memId"); %>
          <h2>안녕하세요
          ${LoginDTO.memID}
        <c:if test="${mVo.authority eq 1 or mVo.authority eq 2 or mVo.authority eq 3}">
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
      
    </body>
    <!-- END Body -->
</html>
