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

import com.posep.domain.PageMaker;
import com.posep.domain.Class1VO;
import com.posep.domain.SearchCriteria;
import com.posep.service.Class1Service;

@Controller
@RequestMapping("/admin/class1/*")
public class Class1Controller {
	   private static Logger logger = LoggerFactory.getLogger(Class1Controller.class);

	@Inject
	private Class1Service service;

	
	  //리스트
	   @RequestMapping(value = "/list", method = RequestMethod.GET)
	   public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		   
		  logger.info(cri.toString());
		  List<Class1VO> classList= service.listSearch(cri);
		  model.addAttribute("list", classList);
		  
	      PageMaker pageMaker = new PageMaker();
	      pageMaker.setCri(cri);
	      
	      pageMaker.setTotalCount(service.listSearchCount(cri));
	      
	   


	      for(Class1VO t: service.listSearch(cri)) {
	    	  System.out.println(t);
	      }
	      
	      
	      model.addAttribute("pageMaker", pageMaker);
	
	   }
	   
	   
	   
	   //등록
	   @RequestMapping(value = "/register", method = RequestMethod.GET)
	   public void registerGET(Class1VO Class1VO, Model model) throws Exception {
	      logger.info("class1 register get..");
	      System.out.println(Class1VO);

	   }
	   
	   @RequestMapping(value = "/register", method = RequestMethod.POST)
	   public String registerPOST(Class1VO Class1VO, RedirectAttributes rttr) throws Exception {

	      logger.info("Admin program Register POST .......");
	     

	      service.adregist(Class1VO);
	      
	      rttr.addFlashAttribute("msg", "register");
	      System.out.println(Class1VO);
	      return "redirect:/admin/class1/list";
	   }
	   
	   
	   // 수정
	   @RequestMapping(value = "/modify", method = RequestMethod.GET)
	   public void modifyGET(@RequestParam("class1No") String class1No , @ModelAttribute("cri") SearchCriteria cri,  Model model) throws Exception {

	      logger.info("Admin class1 modifyGET....");
	      model.addAttribute(service.adread(class1No));
	      
	   } 

	   @RequestMapping(value = "/modify", method = RequestMethod.POST)
	   public String modifyPOST(Class1VO Class1VO, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rttr) throws Exception {

	      logger.info("class1 modifyPOST.............");
	      logger.info(cri.toString());
	      System.out.println("SDFJHSFDHF||"+Class1VO.getClass1No());
	      System.out.println("SDFJHSFDHF2||"+Class1VO.getClass1Name());
	      service.admodify(Class1VO);

	   /*   rttr.addAttribute("page", cri.getPage());
	      rttr.addAttribute("perPageNum", cri.getPerPageNum());
	      rttr.addAttribute("searchType", cri.getSearchType());
	      rttr.addAttribute("keyword", cri.getKeyword());*/

	      rttr.addFlashAttribute("msg", "MODIFY");
	      rttr.addFlashAttribute("Class1VO", Class1VO);

	      logger.info(rttr.toString());

	      return "redirect:/admin/class1/list";
	   }
	   
	   
	   //삭제
	   @RequestMapping(value = "/remove", method = RequestMethod.POST)
	   public String adremove(@RequestParam("class1No") String class1No, SearchCriteria cri, RedirectAttributes rttr)
	         throws Exception {
		   
	      service.adremove(class1No);

	      rttr.addAttribute("page", cri.getPage());
	      rttr.addAttribute("perPageNum", cri.getPerPageNum());
	      rttr.addAttribute("searchType", cri.getSearchType());
	      rttr.addAttribute("keyword", cri.getKeyword());

	      rttr.addFlashAttribute("msg", "REMOVE");
	      return "redirect:/admin/class1/list";

	   }
	   
	   //코드 중복체크 AJAX.
	   @RequestMapping(value = "/checkClass1No", method = RequestMethod.GET)
	   @ResponseBody
	   public boolean checkClass1No(@RequestParam("class1No") String class1No) throws Exception {
	      logger.info("Check User No");
	      boolean check = false;
	      int count = service.checkClass1No(class1No);
	      
	      if(count == 0) {
	         check = true;
	      } else {
	         check = false;
	      }
	      
	      logger.info("Check Val : " + check);
	      
	      return check;
	   }
	   
	   

}
