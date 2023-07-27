package com.posep.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.posep.domain.CanPartVO;
import com.posep.domain.PageMaker;
import com.posep.domain.SearchCriteria;
import com.posep.domain.TechnologistVO;
import com.posep.service.CanPartService;
import com.posep.service.TechnologistService;

@Controller
@RequestMapping("member/technologist/*")
public class MemberTechnologistController {
   private static Logger logger = LoggerFactory.getLogger(AdminTechnologistController.class);

   @Inject
   private TechnologistService service;
   @Inject
   private CanPartService Cservice;
   
   // 리스트
   @RequestMapping(value = "/list", method = RequestMethod.GET)
   public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

      logger.info(cri.toString());
      List<TechnologistVO> classList = service.listSearch(cri);
      model.addAttribute("list", classList);

      PageMaker pageMaker = new PageMaker();
      pageMaker.setCri(cri);

      pageMaker.setTotalCount(service.listSearchCount(cri));

      for (TechnologistVO t : service.listSearch(cri)) {
         System.out.println(t);
      }

      model.addAttribute("pageMaker", pageMaker);

   }

   // 상세보기
      @RequestMapping(value = "/read", method = RequestMethod.GET)
      public void read(@RequestParam("techId") String techId, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
         logger.info("technologist read get.,...........");
         model.addAttribute(service.adread(techId));
         
         List<CanPartVO> everyClass3List = Cservice.everyClass3List(techId);
         model.addAttribute("everyClass3List", everyClass3List);

         List<CanPartVO> everyClass3List2 = Cservice.everyClass3List2(techId);
         model.addAttribute("everyClass3List2", everyClass3List2);
         
         // 업로드한 파일 리스트
         model.addAttribute("filesVO", service.fileList(techId));

      }

      
      
}