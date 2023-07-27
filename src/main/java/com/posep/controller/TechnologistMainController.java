package com.posep.controller;

import java.util.List;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.posep.domain.CanPartVO;
import com.posep.domain.MemberVO;
import com.posep.domain.SearchCriteria;
import com.posep.domain.TechnologistVO;
import com.posep.service.CanPartService;

import com.posep.service.TechnologistService;

@Controller
@RequestMapping("/technologist/*")
public class TechnologistMainController {

   
   
   @Inject
   private TechnologistService service;
   
   @Inject
   private CanPartService Cservice;
   
   
   private static final Logger logger = LoggerFactory.getLogger(TechnologistMainController.class);
   
   
    //관리자 :: 대시보드 메인

    @RequestMapping("/techDashboard")
    public void main(HttpServletRequest request, Model model) throws Exception {
       

       HttpSession session = request.getSession();

       TechnologistVO tVo = (TechnologistVO) session.getAttribute("techLogin");
       System.out.println("============> 기술인로그인: " + tVo);
       String techId = tVo.getTechId();
       
       
        
       
 
     model.addAttribute("tmainConsultList", service.tMainConsultList(techId));
     
     model.addAttribute("tmainCooperatList", service.tMainCooperatList(techId));
    }
    
    
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void read(HttpServletRequest request, Model model) throws Exception {

	       HttpSession session = request.getSession();

	       TechnologistVO tVo = (TechnologistVO) session.getAttribute("techLogin");
	       System.out.println("============> 기술인로그인: " + tVo);
	       String techId = tVo.getTechId();
	       
		logger.info("technologist read get.,...........");
		model.addAttribute(service.adread(techId));
		model.addAttribute("filesVO",service.fileList(techId));
		List<CanPartVO> everyClass3List = Cservice.everyClass3List(techId);
		model.addAttribute("everyClass3List", everyClass3List);
		
		List<CanPartVO> everyClass3List2 = Cservice.everyClass3List2(techId);
		model.addAttribute("everyClass3List2", everyClass3List2);
	

		
	
	}

    
	// 수정
		@RequestMapping(value = "/modify", method = RequestMethod.GET)
		public void modifyGET(@RequestParam("techId") String techId, @ModelAttribute("cri") SearchCriteria cri, Model model)
				throws Exception {

			logger.info("Admin technologist modifyGET....");
			model.addAttribute(service.adread(techId));
			model.addAttribute("filesVO",service.fileList(techId));

		}

		@RequestMapping(value = "/modify", method = RequestMethod.POST)
		public String modifyPOST(TechnologistVO TechnologistVO, @ModelAttribute("cri") SearchCriteria cri,
				RedirectAttributes rttr) throws Exception {

			logger.info("Technologist modifyPOST.............");
			logger.info(cri.toString());
			service.admodify(TechnologistVO);

			rttr.addFlashAttribute("msg", "MODIFY");
			rttr.addFlashAttribute("TechnologistVO", TechnologistVO);

			logger.info(rttr.toString());

			return "redirect:/technologist/myPage";
		
		}
		
		 // 내 비밀번호 수정 폼 이동 
	    @RequestMapping(value = "/pwModify", method = RequestMethod.GET)
	    public void myPwUpdateGET(@RequestParam("techId") String techId, Model model) throws Exception {
	    	
	    	logger.info("technologist pwmodifyGET....");
			model.addAttribute(service.adread(techId));
	    }

	    // 내 비밀번호 수정
	    @RequestMapping(value = "/pwModify", method = RequestMethod.POST)
	    public String myPwUpdatePOST(TechnologistVO TechnologistVO, RedirectAttributes rttr, Model model) throws Exception {


	       service.pwModify(TechnologistVO);

	       rttr.addFlashAttribute("msg", "PWSUCCESS");
	    

	       return "redirect:/logout";
	    }
	    
		
		
		
		//  선택한 소분류 삭제
		@RequestMapping(value = "/Cremove", method = RequestMethod.POST)
		public String remove(@RequestParam("canPartNo") int canPartNo, CanPartVO CanPartVO, RedirectAttributes rttr)
				throws Exception {

			logger.info("CanPart remove post.................");
			logger.info(CanPartVO.toString());
			Cservice.remove(canPartNo);

			rttr.addFlashAttribute("msg", "SUCCESS");
			return "redirect:/technologist/myPage";
		}

}