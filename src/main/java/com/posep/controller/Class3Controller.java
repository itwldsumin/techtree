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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.posep.domain.Class1VO;
import com.posep.domain.Class2VO;
import com.posep.domain.Class3VO;
import com.posep.domain.PageMaker;
import com.posep.domain.SearchCriteria;
import com.posep.service.Class3Service;

@Controller
@RequestMapping("admin/class3/*")
public class Class3Controller {

   private static final Logger logger = LoggerFactory.getLogger(Class2Controller.class);

   @Inject
   private Class3Service service;

   // 리스트
   @RequestMapping(value = "/list", method = RequestMethod.GET)
   public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

      logger.info(cri.toString());

      /* List<Class3VO> classList= service.listSearch(cri); */
      model.addAttribute("list3", service.listSearch(cri));

      PageMaker pageMaker = new PageMaker();
      pageMaker.setCri(cri);

      pageMaker.setTotalCount(service.listSearchCount(cri));

      for (Class3VO t : service.listSearch(cri)) {
         System.out.println(t);
      }

      model.addAttribute("pageMaker", pageMaker);
      model.addAttribute("list", service.listSearchCount(cri));
   }

   // 등록
   @RequestMapping(value = "/register", method = RequestMethod.GET)
   public void registerGET(  Model model) throws Exception {
      logger.info("class3 register get..");
      List<Class1VO> listClass1 = service.listClass1();
      List<Class2VO> listClass2 = service.listClass2();
      model.addAttribute("listClass1", listClass1);
      model.addAttribute("listClass2", listClass2);

   }

   @RequestMapping(value = "/register", method = RequestMethod.POST)
   public String registerPOST(Class3VO Class3VO, RedirectAttributes rttr) throws Exception {

      logger.info("Admin class3 Register POST .......");

      service.adregist(Class3VO);

      rttr.addFlashAttribute("msg", "register");
      System.out.println(Class3VO);
      return "redirect:/admin/class3/list";
   }

   // 수정
   @RequestMapping(value = "/modify", method = RequestMethod.GET)
   public void modifyGET(@RequestParam("class3No") String class3No, @ModelAttribute("cri") SearchCriteria cri,
         Model model) throws Exception {

      logger.info("Admin class3 modifyGET....");
      model.addAttribute(service.adread(class3No));

   }

   @RequestMapping(value = "/modify", method = RequestMethod.POST)
   public String modifyPOST(Class3VO Class3VO, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rttr)
         throws Exception {

      logger.info("class3 modifyPOST.............");
      logger.info(cri.toString());

      service.admodify(Class3VO);

      /*
       * rttr.addAttribute("page", cri.getPage()); rttr.addAttribute("perPageNum",
       * cri.getPerPageNum()); rttr.addAttribute("searchType", cri.getSearchType());
       * rttr.addAttribute("keyword", cri.getKeyword());
       */

      rttr.addFlashAttribute("msg", "MODIFY");
      rttr.addFlashAttribute("Class3VO", Class3VO);

      logger.info(rttr.toString());

      return "redirect:/admin/class3/list";
   }

   // 삭제
   @RequestMapping(value = "/remove", method = RequestMethod.POST)
   public String adremove(@RequestParam("class3No") String class3No, SearchCriteria cri, RedirectAttributes rttr)
         throws Exception {

      service.adremove(class3No);

      rttr.addAttribute("page", cri.getPage());
      rttr.addAttribute("perPageNum", cri.getPerPageNum());
      rttr.addAttribute("searchType", cri.getSearchType());
      rttr.addAttribute("keyword", cri.getKeyword());

      rttr.addFlashAttribute("msg", "REMOVE");
      return "redirect:/admin/class3/list";

   }
 //코드 중복체크 AJAX.
   @RequestMapping(value = "/checkClass3No", method = RequestMethod.GET)
   @ResponseBody
   public boolean checkClass3No(@RequestParam("class3No") String class3No) throws Exception {
      logger.info("Check User No");
      boolean check = false;
      
      int count = service.checkClass3No(class3No);
      
      if(count == 0) {
         check = true;
      } else {
         check = false;
      }
      
      logger.info("Check Val : " + check);
      
      return check;
   }
   
}