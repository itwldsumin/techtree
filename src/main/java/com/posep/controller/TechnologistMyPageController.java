package com.posep.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.posep.domain.CanPartVO;
import com.posep.service.CanPartService;

@Controller
@RequestMapping("technologist/myPage/*")
public class TechnologistMyPageController {

	private static final Logger logger = LoggerFactory.getLogger(TechnologistMyPageController.class);

	@Inject
	private CanPartService service;


	   // 5. 선택한 소분류 삭제
	   @RequestMapping(value = "/remove", method = RequestMethod.GET)
	   public String canPartremove(@RequestParam("canPartNo") int canPartNo, CanPartVO CanPartVO, RedirectAttributes rttr) throws Exception {

	      logger.info("CanPart remove post.................");
			logger.info(CanPartVO.toString());
			service.remove(canPartNo);
			rttr.addFlashAttribute("msg", "SUCCESS");
			return "redirect:/technologist/myPage";
	   }
	

}
