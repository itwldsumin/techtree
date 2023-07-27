package com.posep.controller;

import javax.inject.Inject;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.posep.service.MemberService;



@Controller
@RequestMapping("/admin/*")
public class AdminMainController {

   @Inject
   private MemberService service;

   //관리자 :: 대시보드
   //1. 관리자 :: 일반회원, 기업회원, 기술인 수
   
   private static Logger logger = LoggerFactory.getLogger(AdminMainController.class);
   
   @RequestMapping("/adminDashboard")
   public void main(Model model) throws Exception {
      logger.info("Admin Main.......");
      model.addAttribute("countMem", service.countMem());
      model.addAttribute("countMem2", service.countMem2());
      model.addAttribute("countTech", service.countTech());
      

      
      
   }
   
   
}