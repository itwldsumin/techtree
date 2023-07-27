package com.posep.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.posep.domain.MemberVO;
import com.posep.domain.PageMaker;
import com.posep.domain.SearchCriteria;
import com.posep.domain.TechnologistVO;
import com.posep.dto.LoginDTO;
import com.posep.service.Class1Service;
import com.posep.service.Class2Service;
import com.posep.service.Class3Service;
import com.posep.service.LoginService;
import com.posep.service.MemberService;
import com.posep.service.TechnologistService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Inject
	private MemberService service;
	
	@Inject
	private LoginService loginService;

	@Inject
	private Class1Service service1;

	@Inject
	private Class2Service service2;

	@Inject
	private Class3Service service3;

	@Inject
	private TechnologistService Tservice;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, @ModelAttribute() SearchCriteria cri, Model model,
			@RequestParam(value="class1No", required=false, defaultValue="NB") String method,
			@RequestParam(value="class2No", required=false, defaultValue="NB05") String class2No) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);

		List<Class1VO> classList = service1.listSearch(cri);
		model.addAttribute("list", classList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		pageMaker.setTotalCount(service.listSearchCount(cri));

		List<Class1VO> list1 = service1.list1(method);
		model.addAttribute("list1", list1);

		List<Class2VO> list2 = service2.list2(method);
		model.addAttribute("list2", list2);

		List<Class3VO> list3 = service3.list3(class2No);
		model.addAttribute("list3", list3);
		
		List<List<TechnologistVO>> listT = new ArrayList<List<TechnologistVO>>();
		
		for(Class3VO v3 : list3) {
			Tservice.listT(v3.getClass3No());
			listT.add(Tservice.listT(v3.getClass3No()));
		}

		model.addAttribute("listT", listT);

		model.addAttribute(service2.adread(class2No));
		

		return "index";
	}

	
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String homePost(Locale locale, @ModelAttribute() SearchCriteria cri, Model model,
			@RequestParam("class1No") String method,
			@RequestParam("class2No") String class2No, String class3No) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);

		List<Class1VO> classList = service1.listSearch(cri);
		model.addAttribute("list", classList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		System.out.println("======================> class1No:  " + method);
		System.out.println("======================> class2No:  " + class2No);
		
		pageMaker.setTotalCount(service.listSearchCount(cri));

		List<Class1VO> list1 = service1.list1(method);
		model.addAttribute("list1", list1);

		List<Class2VO> list2 = service2.list2(method);
		model.addAttribute("list2", list2);

		List<Class3VO> list3 = service3.list3(class2No);
		model.addAttribute("list3", list3);
		
		List<List<TechnologistVO>> listT = new ArrayList<List<TechnologistVO>>();
		
		for(Class3VO v3 : list3) {
			
			List<TechnologistVO> techList = Tservice.listT(v3.getClass3No());
			if(techList.size() > 0) {
				listT.add(Tservice.listT(v3.getClass3No()));
			}
		}
		
		System.out.println("===========> listT.size()" + listT.size());
		model.addAttribute("listT", listT);
		model.addAttribute(service2.adread(class2No));
		
		return "index";
	}
	// 팝업창
	@RequestMapping(value = "/listpopup", method = RequestMethod.GET)
	public void searchPopup(@RequestParam("class1No") String method, @RequestParam("class2No") String class2No,
			Model model, String class1No, String class3No) throws Exception {
		logger.info("saerchPopup......");

		List<Class1VO> list1 = service1.list1(class1No);
		model.addAttribute("list1", list1);

		List<Class2VO> list2 = service2.list2(class1No);
		model.addAttribute("list2", list2);

		List<Class3VO> list3 = service3.list3(class2No);
		model.addAttribute("list3", list3);

		List<TechnologistVO> listT = Tservice.listT(class3No);
		model.addAttribute("listT", listT);

		model.addAttribute(service2.adread(class2No));

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	   public void loginGET(@ModelAttribute("dto") LoginDTO dto) throws Exception {
	      logger.info("login Page........");

	   }

	   @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	   public String loginPost(LoginDTO dto, HttpSession session, Model model, RedirectAttributes rttr) throws Exception {

	      
	      System.out.println("============> loginPost: " + dto);
	      MemberVO mVo = loginService.login(dto);
	      
	      if (mVo == null) {
	         rttr.addFlashAttribute("msg", "nologin");
	         return "redirect:/login";
	      }

	      System.out.println("MemberVO : " + mVo.toString());
	      model.addAttribute("mVo", mVo);

	      return "login";
	   }
	   
	   @RequestMapping(value = "/techLoginPost", method = RequestMethod.POST)
	   public String techLoginPost(LoginDTO dto, HttpSession session, Model model, RedirectAttributes rttr) throws Exception {

	      
	      System.out.println("============> techLoginPost: " + dto);
	      TechnologistVO tVo = loginService.techLogin(dto);
	      

	      if (tVo == null) {
	         rttr.addFlashAttribute("msg", "nologin");
	         return "redirect:/login";
	      }

	      System.out.println("TechnologistVO : " + tVo.toString());

	      model.addAttribute("tVo", tVo);

	      return "login";
	   }
	   

	   
	   
	   @RequestMapping(value = "/signup", method = RequestMethod.GET)
	   public void signupGET(MemberVO mVo, Model model) throws Exception {
	      logger.info("member register Page........");

	   }
	   
	   @RequestMapping(value = "/signup", method = RequestMethod.POST)
	   public String registerPOST(MemberVO mVo, RedirectAttributes rttr) throws Exception {


			logger.info("member registerPOST.............");
			logger.info(mVo.toString());

			service.register(mVo);

			rttr.addFlashAttribute("msg", "signup");
			rttr.addFlashAttribute("mVo", mVo);

			return "redirect:/login";
	   }
	   
	   
	   
	   
	   

	   @RequestMapping(value = "/logout", method = RequestMethod.GET)
	   public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
	         throws Exception {

	      Object nObj = session.getAttribute("login");
	      Object tObj = session.getAttribute("techLogin");

	      if (nObj != null) {
	         logger.info("logout: session.invalidate() ");

	         session.removeAttribute("login");
	         session.invalidate();

	      }else if(tObj != null) {
	         
	         logger.info("logout: session.invalidate() ");

	         session.removeAttribute("techLogin");
	         session.invalidate();
	         
	      }

	      return "redirect:/";
	   }

	   
	   
	   
	   
	   
	   //11.05 새로 추가 된 부분 ============================
	   
	   @RequestMapping(value = "/checkMemId", method = RequestMethod.GET)
	   @ResponseBody
	   public boolean checkMemId(@RequestParam("memId") String memId) throws Exception {
	      logger.info("Check memId");
	      boolean check = false;
	      int count = service.checkMemId(memId);

	      if (count == 0) {
	         check = true;
	      } else {
	         check = false;
	      }

	      logger.info("Check Val : " + check);

	      return check;
	   }

	






}