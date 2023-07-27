package com.posep.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.posep.domain.CanPartVO;
import com.posep.domain.Class3VO;
import com.posep.domain.TechnologistVO;
import com.posep.service.CanPartService;
import com.posep.service.Class3Service;

@Controller
@RequestMapping("technologist/canpart/*")
public class CanPartController {

	private static final Logger logger = LoggerFactory.getLogger(CanPartController.class);

	@Inject
	private CanPartService service;

	@Inject
	private Class3Service service3;

	// 1. 팝업창 -> 소분류 선택 팝업창 -> 소분류 검색 결과 페이지
	@RequestMapping(value = "/searchClass3", method = RequestMethod.GET)
	public void searchClass3( String class3Name, Model model) throws Exception {

		List<Class3VO> searchClass3 = service.searchClass3(class3Name);

		logger.info("searchClass3 : " + searchClass3.toString());
		model.addAttribute("searchClass3", searchClass3);

	}

	// 2. 소분류 목록 팝업창
	@RequestMapping(value = "/searchPopup", method = RequestMethod.GET)
	public void searchPopup(@RequestParam("techId") String techId, Model model) throws Exception {
		logger.info("saerchPopup......");
		List<Class3VO> class3List = service.class3List(techId);
		model.addAttribute("class3List", class3List);
	}

	// 3. 선택한 소분류 목록
	@RequestMapping(value = "/canpart", method = RequestMethod.GET)
	public void canPart(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		TechnologistVO TechnologistVO = (TechnologistVO) session.getAttribute("techLogin");
		String techId = TechnologistVO.getTechId();

		logger.info("show all list......");

		model.addAttribute(service3.listAll());
		model.addAttribute("listAll", service3.listAll());
	}

	// 4. 소분류 등록
	@RequestMapping(value = "", method = RequestMethod.GET)
	public void registerGET() throws Exception {

		logger.info("register get ......");
	}

	// POST
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String registerPOST(CanPartVO CanPartVO, RedirectAttributes rttr) throws Exception {

		logger.info("CanPartVO Register POST .......");

		logger.info("CanPartVO : " + CanPartVO);

		service.register(CanPartVO);

		rttr.addFlashAttribute("msg", "처리 완료되었습니다.");

		return "redirect:/technologist/myPage";
	}

	
	// 로그아웃 GET
	@RequestMapping(value = "/CanPartlogout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {

		session.invalidate();

		return "redirect:/technologist/myPage";
	}
}
