package com.posep.interceptor;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.posep.domain.MemberVO;

public class LoginInterceptor extends HandlerInterceptorAdapter {

   private static final String LOGIN = "login";
   private static final String TECH_LOGIN = "techLogin";

   private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

   // MemberVO 객체 확인(로그인 가능한지 아닌지) 후 HttpSession 저장
   @Override
   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
         ModelAndView modelAndView) throws Exception {

      HttpSession session = request.getSession();

      ModelMap modelMap = modelAndView.getModelMap();
      Object MemberVO = modelMap.get("mVo");
      Object TechnologistVO = modelMap.get("tVo");

      System.out.println("postHandle : ");

      if (MemberVO != null) {

         logger.info("new login success");
         session.setAttribute(LOGIN, MemberVO);

         MemberVO checkAuth = (MemberVO) MemberVO;
         // response.sendRedirect("/");
         if (checkAuth.getAuthority().equals("0"))// 관리자
         {
            logger.info("adminmain...........");

            response.sendRedirect("/admin/adminDashboard");

         } else {// 일반사용자 1
            logger.info("membermain...........");
            response.sendRedirect("/");

         }
         
      } 
      
      else if (TechnologistVO != null) {

         logger.info("new tech login success");
         session.setAttribute(TECH_LOGIN, TechnologistVO);
         System.out.println("============> techLoginPost: " + TECH_LOGIN);
         response.sendRedirect("/technologist/techDashboard");

      } 
   }

   // HttpSession 초기화
   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {

      HttpSession session = request.getSession();

      if (session.getAttribute(LOGIN) != null) {
         logger.info("clear login data before");
         session.removeAttribute(LOGIN);
         
      } else if (session.getAttribute(TECH_LOGIN) != null) {
         logger.info("clear login data before");
         
         session.removeAttribute(TECH_LOGIN);
      }
 
      return true;
   }

}