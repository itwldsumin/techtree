package com.posep.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.posep.domain.InterestPartVO;
import com.posep.service.InterestPartService;
@Controller
@RequestMapping("member/myInfo/*")
public class MemberMyInfoController {

	

	private static final Logger logger = LoggerFactory.getLogger(MemberMyInfoController.class);

	@Inject
	private InterestPartService service;


	   // 5. 선택한 소분류 삭제
	   @RequestMapping(value = "/remove", method = RequestMethod.GET)
	   public String  interestPartremove(@RequestParam("interestPartNo") int interestPartNo, InterestPartVO InterestPartVO, RedirectAttributes rttr) throws Exception {

	      logger.info("InterestPart remove post.................");
			logger.info(InterestPartVO.toString());
			service.remove(interestPartNo);
			rttr.addFlashAttribute("msg", "SUCCESS");
			return "redirect:/member/myInfo";
	   }

	
}
