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
import com.posep.domain.PageMaker;
import com.posep.domain.SearchCriteria;
import com.posep.service.Class2Service;



@Controller	
@RequestMapping("admin/class2/*")
public class Class2Controller  {
	

	   private static final Logger logger = LoggerFactory.getLogger(Class2Controller.class);

	   
	   @Inject
	   private Class2Service service;
	   
	   //리스트
	   @RequestMapping(value = "/list", method = RequestMethod.GET)
	   public void listPage(@ModelAttribute("cri") SearchCriteria cri,Model model) throws Exception {
		   
		   logger.info(cri.toString());
		 
	/*	  List<Class2VO> classList= service.listSearch(cri);*/
		  model.addAttribute("list2", service.listSearch(cri));
		  
	      PageMaker pageMaker = new PageMaker();
	      pageMaker.setCri(cri);
	      
	      pageMaker.setTotalCount(service.listSearchCount(cri));
	      
	      
	      for(Class2VO t: service.listSearch(cri)) {
	    	  System.out.println(t);
	      }
	      
	      
	      model.addAttribute("pageMaker", pageMaker);
	
	   }
	   
	   
	   
	  //등록
	   @RequestMapping(value = "/register", method = RequestMethod.GET)
	   public void registerGET( Model model) throws Exception {
	      logger.info("class2 register get..");
	      List<Class1VO> listClass1 = service.listClass1();
	      model.addAttribute("listClass1", listClass1);



	   }
	   
	   @RequestMapping(value = "/register", method = RequestMethod.POST)
	   public String registerPOST(Class2VO Class2VO, RedirectAttributes rttr) throws Exception {

	      logger.info("Admin class2 Register POST .......");
	     

	      service.adregist(Class2VO);
	      
	      rttr.addFlashAttribute("msg", "register");
	      System.out.println(Class2VO);
	      return "redirect:/admin/class2/list";
	   }
	   
	   
	   // 수정
	   @RequestMapping(value = "/modify", method = RequestMethod.GET)
	   public void modifyGET(@RequestParam("class2No") String class2No , @ModelAttribute("cri") SearchCriteria cri,  Model model) throws Exception {

	      logger.info("Admin class2 modifyGET....");
	      model.addAttribute(service.adread(class2No));
	      
	   } 

	   @RequestMapping(value = "/modify", method = RequestMethod.POST)
	   public String modifyPOST(Class2VO Class2VO, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rttr) throws Exception {

	      logger.info("class2 modifyPOST.............");
	      logger.info(cri.toString());
	      
	      service.admodify(Class2VO);

	   /*   rttr.addAttribute("page", cri.getPage());
	      rttr.addAttribute("perPageNum", cri.getPerPageNum());
	      rttr.addAttribute("searchType", cri.getSearchType());
	      rttr.addAttribute("keyword", cri.getKeyword());*/

	      rttr.addFlashAttribute("msg", "MODIFY");
	      rttr.addFlashAttribute("Class2VO", Class2VO);

	      logger.info(rttr.toString());

	      return "redirect:/admin/class2/list";
	   }
	   
	   
	   //삭제
	   @RequestMapping(value = "/remove", method = RequestMethod.POST)
	   public String adremove(@RequestParam("class2No") String class2No, SearchCriteria cri, RedirectAttributes rttr)
	         throws Exception {

		   service.adremove(class2No);

	      rttr.addAttribute("page", cri.getPage());
	      rttr.addAttribute("perPageNum", cri.getPerPageNum());
	      rttr.addAttribute("searchType", cri.getSearchType());
	      rttr.addAttribute("keyword", cri.getKeyword());
	     
	      rttr.addFlashAttribute("msg", "REMOVE");
	      return "redirect:/admin/class2/list";

	   }
	   
	   
	   //코드 중복체크 AJAX.
	   @RequestMapping(value = "/checkClass2No", method = RequestMethod.GET)
	   @ResponseBody
	   public boolean checkClass2No(@RequestParam("class2No") String class2No) throws Exception {
	      logger.info("Check User No");
	      boolean check = false;
	      int count = service.checkClass2No(class2No);
	      
	      if(count == 0) {
	         check = true;
	      } else {
	         check = false;
	      }
	      
	      logger.info("Check Val : " + check);
	      
	      return check;
	   }
	   
	   

}
