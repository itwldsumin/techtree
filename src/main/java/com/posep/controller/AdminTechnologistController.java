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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.posep.domain.CanPartVO;
import com.posep.domain.Class1VO;
import com.posep.domain.Class2VO;
import com.posep.domain.Class3VO;
import com.posep.domain.PageMaker;
import com.posep.domain.SearchCriteria;
import com.posep.domain.TechnologistVO;
import com.posep.service.CanPartService;
import com.posep.service.Class3Service;
import com.posep.service.TechnologistService;
import com.posep.util.UploadFileUtils;

@Controller
@RequestMapping("admin/technologist/*")
public class AdminTechnologistController {

	private static Logger logger = LoggerFactory.getLogger(AdminTechnologistController.class);

	@Inject
	private TechnologistService service;
	@Inject
	private Class3Service service3;
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

	// 등록
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(TechnologistVO TechnologistVO, Model model) throws Exception {
		logger.info("Technologist register get..");
		System.out.println(TechnologistVO);
		logger.info("class3 register get..");
		
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(TechnologistVO TechnologistVO, RedirectAttributes rttr) throws Exception {

		logger.info("Admin program Register POST .......");
		System.out.println(TechnologistVO);

		service.adregist(TechnologistVO);

		rttr.addFlashAttribute("msg", "register");
		System.out.println(TechnologistVO);
		return "redirect:/admin/technologist/list";
	}

	// 상세보기
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("techId") String techId, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		logger.info("technologist read get.,...........");
		model.addAttribute("technologistVO", service.adread(techId));

		// 업로드한 파일 리스트
		model.addAttribute("filesVO", service.fileList(techId));

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
		model.addAttribute("filesVO", service.fileList(techId));

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

		return "redirect:/admin/technologist/list";
	}

	// 삭제
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String adremove(@RequestParam("techId") String techId, SearchCriteria cri, RedirectAttributes rttr)
			throws Exception {

		service.adremove(techId);

		logger.info("technologist modify post ....................");

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "REMOVE");
		return "redirect:/admin/technologist/list";

	}

	// 전공팝업
	// 1. 팝업창 -> 소분류 선택 팝업창 -> 소분류 검색 결과 페이지
	@RequestMapping(value = "/searchClass3", method = RequestMethod.GET)
	public void searchClass3(String class3Name, Model model) throws Exception {

		List<Class3VO> searchClass3 = service.searchClass3(class3Name);

		logger.info("searchClass3 : " + searchClass3.toString());
		model.addAttribute("searchClass3", searchClass3);

	}

	// 2. 소분류 목록 팝업창
	@RequestMapping(value = "/searchPopup", method = RequestMethod.GET)
	public void searchPopup(Model model) throws Exception {
		logger.info("saerchPopup......");
		List<Class3VO> class3List = service.class3List();
		model.addAttribute("class3List", class3List);
	}

}
