package com.posep.controller;

import javax.inject.Inject;





import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.posep.domain.PageMaker;
import com.posep.domain.SearchCriteria;

import com.posep.service.MemberService;

@Controller
@RequestMapping("admin/member/*")
public class AdminMemberController {

   @Inject
   private MemberService service;

   private static Logger logger = LoggerFactory.getLogger(AdminMemberController.class);
   
   //관리자:: 회원 관리 (목록, 상세보기, 삭제)


   //1. 관리자 :: 회원 리스트
   @RequestMapping(value = "/list", method=RequestMethod.GET)
   public void listGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
      
      logger.info("member listGET..................");
      logger.info(cri.toString());
      
      System.out.println("***********" + cri.toString());
      logger.info("service.list(cri): " + service.list(cri).size());
      cri.setKeyword("keyword");
      
      model.addAttribute("list", service.listSearch(cri));
      
      PageMaker pageMaker = new PageMaker();
      pageMaker.setCri(cri);
      
      pageMaker.setTotalCount(service.listSearchCount(cri));
      
      model.addAttribute("pageMaker", pageMaker);
   }
   
   //2. 관리자 :: 회원 상세보기
   @RequestMapping(value = "/read", method=RequestMethod.GET)
   public void modifyGET(@RequestParam("memId") String memId, Model model, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
      
      logger.info("member modifyGET...............");
      model.addAttribute("memberVO",service.read(memId));
   }
   
  
   //3. 관리자 :: 회원 삭제하기
   @RequestMapping(value = "/remove", method=RequestMethod.GET)
   public String remove(@RequestParam("memId") String memId, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
      
      logger.info("member removeGET..............");
      
      service.remove(memId);
      
      rttr.addAttribute("page", cri.getPage());
      rttr.addAttribute("perPageNum", cri.getPerPageNum());
      rttr.addAttribute("SearchType", cri.getSearchType());
      rttr.addAttribute("keyword", cri.getKeyword());
      
      rttr.addFlashAttribute("msg", "REMOVE");
      
      return "redirect:/admin/member/list";
   }

 
   
      
}