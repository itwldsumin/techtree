package com.posep.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.posep.domain.PageMaker;
import com.posep.domain.SearchCriteria;
import com.posep.domain.TechnologistVO;
import com.posep.service.QnAService;
import com.posep.service.TechnologistService;

@Controller
@RequestMapping("/technologist/QnA/*")
public class TechQnAController {

   private static Logger logger = LoggerFactory.getLogger(TechQnAController.class);

   @Inject
   QnAService service;

   @Inject
   TechnologistService tservice;

   // 2. 문의글 전체 리스트
   @RequestMapping(value = "/list", method = RequestMethod.GET)
   public void listPage(@ModelAttribute("cri") SearchCriteria cri, HttpServletRequest request, Model model)
         throws Exception {
      HttpSession session = request.getSession();
      TechnologistVO tVo = (TechnologistVO) session.getAttribute("techLogin");
      String techId = tVo.getTechId();

      cri.setKeyword(techId);
      PageMaker pageMaker = new PageMaker();
      pageMaker.setCri(cri);

      pageMaker.setTotalCount(service.tQListCount(cri));
      
      model.addAttribute("tQList", service.tQList(cri));
      model.addAttribute("pageMaker", pageMaker);

   }

   // 상세보기
   @RequestMapping(value = "/read", method = RequestMethod.GET)
   public void read(@RequestParam("qnaNo") int qnaNo, @ModelAttribute("cri") SearchCriteria cri, Model model)
         throws Exception {
      logger.info("qna read get.,...........");
      model.addAttribute(service.read(qnaNo));

   }
   
   
// 기술인 화면에서 상세보기
      @RequestMapping(value = "/techRead", method = RequestMethod.GET)
      public void read(@RequestParam("techId") String techId, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
         logger.info("technologist read get.,...........");
         model.addAttribute(tservice.adread(techId));

      }

}